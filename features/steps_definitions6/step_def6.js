const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function seModificoLaInformacionDelTicket(informacion) {
  if (informacion==="Informacion") {
    return "Se modifico correctamente";
  } else {
    return "No se modifico correctamente";
  }
}

Given('un ticket', function () {
});

When('yo agrego {string}', function (informacionDada) {
  this.informacion = informacionDada
  this.actualAnswer = seModificoLaInformacionDelTicket(this.informacion);
});

Then('deberia recibir {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
