document.querySelector('#loginForm').addEventListener('submit', (event) => {
  localStorage.setItem('username', document.querySelector('#username').value);
});

document.addEventListener('DOMContentLoaded', (event) => {
  document.querySelector('#username').value = localStorage.getItem('username');
});
