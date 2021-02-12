// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery
//= require jquery_ujs
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

console.log('Hello from application.js')

document.addEventListener('DOMContentLoaded', () => {
  const form = document.querySelector('#theForm');
  form.addEventListener('submit', (event) => {
    event.preventDefault();
    const request = new XMLHttpRequest();
    const url = '/convert';
    request.open('POST', url);
    const data = new FormData(form);
    request.setRequestHeader("Content-Type", "application/json");
    var object = {};
    for (var pair of data.entries()) {
      object[pair[0]] = pair[1];
    };
    console.log(object);
    const callback = () => {
      const p = document.getElementById('result');
      p.innerHTML = request.response;
    };
    request.addEventListener('load', callback);
    request.send(JSON.stringify(object));
  })
});