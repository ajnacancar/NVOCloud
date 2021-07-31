window.onload = e => {
    let isMenuExpanded = false;

document.querySelector('.burger-menu-button button').addEventListener('click', e => {
    const menuContainer = document.getElementById('burger-menu-phone');
    const menu = menuContainer.children[0];

    if (isMenuExpanded) {
        menuContainer.style.display = "none";
        menuContainer.style.width = '0%';
        menu.className = "nav-options-burger-menu-contracted";
    } else {
        menuContainer.style.display = "block";
        menuContainer.style.width = '50%';
        menu.className = "nav-options-burger-menu-expanded";
    }

    isMenuExpanded = !isMenuExpanded;
});

window.addEventListener("scroll", () => {

    var backToTopElement = document.getElementById("back-to-top");
    var scroll = window.scrollY;

    if (scroll >= 300) {
        backToTopElement.style.display = "block";
    } else {
        backToTopElement.style.display = "none";
    }
});


setTimeout(() => {
    let w = window.innerWidth;
    let menuContainer = document.getElementById('burger-menu-phone');

    if (w > 599) {
        menuContainer.style.display = "none";
    }
    else {
        menuContainer.style.display = "block";
    }
}, 1000);

}