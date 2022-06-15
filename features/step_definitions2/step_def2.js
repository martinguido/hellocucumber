const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function seModificoLaPrioridadDelTicket(prioridad) {
  if (prioridad==="Baja" ||prioridad==="Media" ||prioridad==="Alta") {
    return "Se modifico correctamente";
  } else {
    return "No se modifico correctamente";
  }
}

Given('un ticket', function () {
});

When('yo cambio la prioridad por {string}', function (prioridadDada) {
  this.prioridad = prioridadDada
  this.actualAnswer = seModificoLaPrioridadDelTicket(this.prioridad);
});

Then('deberia recibir {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
