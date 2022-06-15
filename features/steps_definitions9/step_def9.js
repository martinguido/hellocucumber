const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function seDioDeBajaTicket(comentario) {
  if (comentario==="Comentario") {
    return "Se da de baja correctamente";
  } else {
    return "No se da de baja correctamente";
  }
}

Given('un ticket', function () {
});

When('yo agrego {string} y lo doy de baja', function (comentarioDado) {
  this.comentario = comentarioDado
  this.actualAnswer = seDioDeBajaTicket(this.comentario);
});

Then('deberia recibir {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
