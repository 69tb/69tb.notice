window.addEventListener('message', function(event) {
  if (event.data.type === "displayNotice") {
      const audio = document.getElementById('notice-sound');
      const noticeBox = document.querySelector('.notice-box');
      const noticeText = document.querySelector('.notice-text');
      const sanitizedMessage = fiveguardno1(event.data.message);

      noticeText.textContent = sanitizedMessage;

      audio.play();

      noticeBox.classList.add('drop-down');

      setTimeout(() => {
          noticeBox.classList.remove('drop-down');
      }, 2000);
  }
});

function fiveguardno1(input) {
  return input.replace(/[&<>"']/g, function(match) {
    const escape = {
      '&': '&amp;',
      '<': '&lt;',
      '>': '&gt;',
      '"': '&quot;',
      "'": '&#39;'
    };
    return escape[match];
  });
}
