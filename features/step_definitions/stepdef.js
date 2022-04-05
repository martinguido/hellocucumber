const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function isItEven(aNumber) {
  if (parseInt(aNumber)%2==0) {
    return "Yes, it is!";
  } else {
    return "No, it is an odd number";
  }
}

Given('The number is {string}', function (givenNumber) {
  this.number = givenNumber;
});

When('I ask whether it\'s an even number', function () {
  this.actualAnswer = isItEven(this.number);
});

Then('I should be told {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
