// Variables DOM
const botonesAgregar = document.querySelectorAll(".boton-carrito");
const listaCarrito = document.getElementById("lista-carrito");
const totalElemento = document.getElementById("total");
const btnGenerarTicket = document.getElementById("btn-generar-ticket");
const inputNombreCliente = document.getElementById("nombre-cliente");

let productosAgregados = [];
let total = 0;

// Agregar producto al carrito
botonesAgregar.forEach((boton) => {
  boton.addEventListener("click", () => {
    const producto = boton.parentElement;
    const nombre = producto.getAttribute("data-nombre");
    const precio = parseFloat(producto.getAttribute("data-precio"));

    productosAgregados.push({ nombre, precio });
    actualizarCarrito();
  });
});

// Actualizar la lista y total del carrito
function actualizarCarrito() {
  listaCarrito.innerHTML = "";
  total = 0;

  productosAgregados.forEach((producto, index) => {
    const li = document.createElement("li");

    li.textContent = `${producto.nombre} - $${producto.precio.toFixed(2)} MXN`;

    // Botón eliminar producto
    const btnEliminar = document.createElement("button");
    btnEliminar.textContent = "❌";
    btnEliminar.title = "Eliminar producto";

    btnEliminar.addEventListener("click", () => {
      productosAgregados.splice(index, 1);
      actualizarCarrito();
    });

    li.appendChild(btnEliminar);
    listaCarrito.appendChild(li);

    total += producto.precio;
  });

  totalElemento.textContent = total.toFixed(2);
}

// Generar y descargar ticket en PDF con jsPDF
function generarTicket() {
  const nombreCliente = inputNombreCliente.value.trim() || "Cliente";

  if (productosAgregados.length === 0) {
    alert("El carrito está vacío. Agrega productos antes de generar el ticket.");
    return;
  }

  const { jsPDF } = window.jspdf;
  const doc = new jsPDF();

  const fecha = new Date().toLocaleString();
  const pedidoId = Math.floor(100000 + Math.random() * 900000);

  // Título
  doc.setFontSize(22);
  doc.setTextColor(39, 174, 96); // verde neón
  doc.text("HOT WINGS ALITAS .", 105, 20, null, null, "center");
  

  // Número de pedido, fecha y nombre cliente
  doc.setFontSize(12);
  doc.setTextColor(0, 0, 0);
 // doc.text(`Número de pedido: #${pedidoId}`, 20, 40);
  doc.text(`Fecha: ${fecha}`, 20, 50);
  doc.text(`Nombre del cliente: ${nombreCliente}`, 20, 60);

  // Línea divisoria
  doc.line(20, 65, 190, 65);

  // Productos listados
  doc.setFontSize(14);
  doc.text("Productos adquiridos:", 20, 75);

  let y = 85;
  productosAgregados.forEach((p, i) => {
    doc.setFontSize(12);
    doc.text(`${i + 1}. ${p.nombre} - $${p.precio.toFixed(2)} MXN`, 25, y);
    y += 10;
  });

  // Línea divisoria final
  doc.line(20, y, 190, y);
  y += 10;

  // Total
  doc.setFontSize(14);
  doc.setTextColor(0, 0, 0);
  doc.text(`Total a pagar: $${total.toFixed(2)} MXN`, 20, y);

  // Mensaje de cierre
  doc.setFontSize(12);
  doc.text("¡Gracias por tu preferencia!", 20, y + 20);

  // Descargar PDF
  doc.save(`ticket_${pedidoId}.pdf`);
}

// Evento botón generar ticket
btnGenerarTicket.addEventListener("click", generarTicket);





