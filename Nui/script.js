window.addEventListener('message', function(event) {
  if (event.data.type === "displayNotice") {
      const audio = document.getElementById('notice-sound');
      const noticeBox = document.querySelector('.notice-box');
      const noticeText = document.querySelector('.notice-text');

      noticeText.textContent = event.data.message;

      audio.play();

      noticeBox.classList.add('drop-down');

      setTimeout(() => {
          noticeBox.classList.remove('drop-down');
      }, 2000);
  }
});