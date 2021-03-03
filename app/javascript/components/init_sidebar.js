export const menuToggler = () => {
  document.getElementById("custom_menu").addEventListener("click", (event) => {
    let menu = document.querySelector('.menu-close');
    let menu2 = document.querySelector('.menu-open');

    if (menu2 == undefined) {
      menu.classList.replace('menu-close', 'menu-open');
    } else {
      menu2.classList.replace('menu-open', 'menu-close');
    }
  });

  const hamburgerButton = document.getElementById('custom_menu');
  const navbarCollapse = document.getElementById('navbarToggleExternalContent');

  navbarCollapse.addEventListener('show.bs.collapse', function () {
    hamburgerButton.style.pointerEvents = "none";
    setTimeout(() => {
      hamburgerButton.style.pointerEvents = "auto";
    }, 500);
  });

  navbarCollapse.addEventListener('hide.bs.collapse', function () {
    hamburgerButton.style.pointerEvents = "none";
    setTimeout(() => {
      hamburgerButton.style.pointerEvents = "auto";
    }, 500);
  });
}
