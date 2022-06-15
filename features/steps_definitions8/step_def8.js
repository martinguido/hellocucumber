const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function seCanceloTicket(comentario) {
  if (comentario==="Comentario") {
    return "Se cancelo correctamente";
  } else {
    return "No se cancelo correctamente";
  }
}

Given('un ticket', function () {
});

When('yo agrego {string} y lo cancelo', function (comentarioDado) {
  this.comentario = comentarioDado
  this.actualAnswer = seCanceloTicket(this.comentario);
});

Then('deberia recibir {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
