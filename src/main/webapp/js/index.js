// Change header background color on scroll
window.addEventListener('scroll', function() {
    const header = document.querySelector('header');
    if (window.scrollY > 0) {
      header.style.backgroundColor = '#fff';
      header.style.color = '#333';
    } else {
      header.style.backgroundColor = '#333';
      header.style.color = '#fff';
    }
  });
  