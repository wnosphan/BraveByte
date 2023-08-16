const passwordChange = document.querySelector('.edit-pass'); // Đặt tên lớp hoặc id cho phần tử edit-info
const passwordChangeField = document.querySelector('.change-password_backgr'); // Đặt tên lớp hoặc id cho phần tử change-password_backgr

passwordChange.addEventListener('click', function(event) {
    event.preventDefault(); // Ngăn chuyển hướng mặc định khi nhấp vào phần tử
    passwordChangeField.style.display = 'flex';
});
passwordChangeField.addEventListener('click', function(event) {

    passwordChangeField.style.display = 'none';
    event.stopPropagation();
});