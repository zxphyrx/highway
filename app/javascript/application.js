// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "trix"
import "@rails/actiontext"

function toggleMute() {
    var myAudio = document.getElementById('background-audio');
    myAudio.muted = !myAudio.muted;
  
    // Update the button icon
    var audioToggle = document.getElementById('audio-toggle');
    audioToggle.textContent = myAudio.muted ? '🔇' : '🔊';
}