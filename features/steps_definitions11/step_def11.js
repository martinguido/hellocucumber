const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function seRegistraResultado(resultado) {
  if (resultado==="Resuelto" || resultado === "NoResuelto") {
    return "Se registro el resultado correctamente";
  } else {
    return "No se registro el resultado correctamente";
  }
}

Given('un ticket cerrado', function () {
});

When('yo agrego {string}', function (resultadoDado) {
  this.resultado = resultadoDado
  this.actualAnswer = seRegistraResultado(this.resultado);
});

Then('deberia recibir {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
