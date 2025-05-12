// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "trix"
import "@rails/actiontext"


const audio = new Audio('https://hc-cdn.hel1.your-objectstorage.com/s/v3/98df9f1054b50821b1d2208a7d3386a2408134be_d3bd3f0972d62d58cdfce91bc042d32ee643aa94_ui_button_confirm_audio__mp3cut.net__audio.mp4');
audio.volume = 0.5
document.addEventListener('click', (event) => {
  let el = event.target.closest('a.btn');
  if (el) {
    audio.play();
  }
});