import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.querySelector('#banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Coiffeur", "Barbier"],
      typeSpeed: 180,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
