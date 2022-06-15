const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function seModificoElEstadoDelTicket(estado) {
  if (estado==="Abierto" || estado==="Cerrado" || estado==="En Analisis" || estado ==="Rechazado") {
    return "Se modifico correctamente";
  } else {
    return "No se modifico correctamente";
  }
}

Given('un ticket', function () {
});

When('yo cambio el estado por {string}', function (estadoDado) {
  this.estado = estadoDado
  this.actualAnswer = seModificoElEstadoDelTicket(this.estado);
});

Then('deberia recibir {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
