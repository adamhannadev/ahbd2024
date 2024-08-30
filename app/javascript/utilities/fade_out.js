export function fadeOut(element) {
    var opacity = 1; // Initial opacity
    var intervalID = setInterval(function() {
      if (opacity <= 0) {
        clearInterval(intervalID);
        element.remove();
      } else {
        opacity -= 0.1;
        element.style.opacity = opacity;
      }
    }, 100); // Decrease opacity every 100ms
    
  }