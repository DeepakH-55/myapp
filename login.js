// Get elements
const toggleButton = document.getElementById('toggleButton');
const message = document.getElementById('message');

// Add event listener to the button
toggleButton.addEventListener('click', function() {
  // Toggle the display of the message
  if (message.style.display === 'none' || message.style.display === '') {
    message.style.display = 'block';
    toggleButton.textContent = 'Hide Message';
  } else {
    message.style.display = 'none';
    toggleButton.textContent = 'Show Message';
  }
});
