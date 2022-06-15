const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function seModificoElAsignadoDelTicket(asignado) {
  if (asignado==="EmpleadoEmpresa") {
    return "Se modifico correctamente";
  } else {
    return "No se modifico correctamente";
  }
}

Given('un ticket', function () {
});

When('yo cambio el {string}', function (asignadoDado) {
  this.asignado = asignadoDado
  this.actualAnswer = seModificoElAsignadoDelTicket(this.asignado);
});

Then('deberia recibir {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
