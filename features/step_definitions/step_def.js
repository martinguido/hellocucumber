const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function seCreoElTicketCorrectamente(producto,version,creador, correo, empresa, descripcion, area,prioridad) {
  if (producto === "Existente" && version === "Existente" && creador === "EmpleadoEmpresa" && correo === "CorreoDeEmpleado" && empresa === "EmpresaCliente" && descripcion ==="Existente" && area ==="AreaEmpresa" && (prioridad === "Baja" || prioridad =="Media" || prioridad==="Alta")) {
    return "Se creo correctamente";
  } else {
    return "No se creo correctamente";
  }
}

Given('el {string} la {string} el {string} el {string} la {string} la {string} el {string} el {string}', function (productoDado,versionDada,creadorDado,correoDado,empresaDada,descripcionDada,areaDada,prioridadDada) {
  this.producto = productoDado;
  this.version = versionDada;
  this.creador = creadorDado;
  this.correo = correoDado;
  this.empresa = empresaDada;
  this.descripcion = descripcionDada;
  this.area = areaDada;
  this.prioridad = prioridadDada;
});

When('yo creo el ticket', function () {
  this.actualAnswer = seCreoElTicketCorrectamente(this.producto,this.version,this.creador,this.correo,this.empresa,this.descripcion,this.area,this.prioridad);
});

Then('deberia recibir {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
