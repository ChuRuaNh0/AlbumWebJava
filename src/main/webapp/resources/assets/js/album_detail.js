const buyBtns = document.querySelectorAll('.js-album-btn');
const modal = document.querySelector('.js-modal');
const btnClose = document.querySelector('.js-modal-close');
const modalContainer = document.querySelector('.js-modal-container');

function hideTickets() {
    console.log('haha')
    modal.classList.remove('open');
}
function showBuyTickets() {
    modal.classList.add('open');
}
buyBtns.forEach(function(buyBtn) {
    buyBtn.addEventListener('click', showBuyTickets)
})

// Đóng modal bằng nút close
btnClose.addEventListener('click', hideTickets);

// ========== Đóng modal bằng cách click ra ngoài modal container ==================
modal.addEventListener('click', hideTickets);

// Dừng việc nổi bọt từ modal container
modalContainer.addEventListener('click', function(e) {
    e.stopPropagation();
})