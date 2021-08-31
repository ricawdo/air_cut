import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.querySelector('#banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Salon de coiffure", "Barbier"],
      typeSpeed: 150,
    });
  }
}

export { loadDynamicBannerText };
