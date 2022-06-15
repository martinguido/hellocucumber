const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function seRechazoTicket(comentario) {
  if (comentario==="Comentario") {
    return "Se rechazo correctamente";
  } else {
    return "No se rechazo correctamente";
  }
}

Given('un ticket', function () {
});

When('yo agrego {string} y lo rechazo', function (comentarioDado) {
  this.comentario = comentarioDado
  this.actualAnswer = seRechazoTicket(this.comentario);
});

Then('deberia recibir {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
