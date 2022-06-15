const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function seRegistraFeedback(feedback) {
  if (feedback==="Feedback") {
    return "Se registro el feedback correctamente";
  } else {
    return "No se registro el feedback correctamente";
  }
}

Given('un ticket cerrado', function () {
});

When('yo agrego {string}', function (feedbackDado) {
  this.feedback = feedbackDado
  this.actualAnswer = seRegistraFeedback(this.feedback);
});

Then('deberia recibir {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
