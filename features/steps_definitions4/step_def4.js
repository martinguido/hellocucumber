const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function seModificoElComentarioDelTicket(comentario) {
  if (comentario==="Comentario") {
    return "Se modifico correctamente";
  } else {
    return "No se modifico correctamente";
  }
}

Given('un ticket', function () {
});

When('yo agrego {string}', function (comentarioDado) {
  this.comentario = comentarioDado
  this.actualAnswer = seModificoElComentarioDelTicket(this.comentario);
});

Then('deberia recibir {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
