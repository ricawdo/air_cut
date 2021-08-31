import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Salon de coiffure", "Barbier"],
    typeSpeed: 150,
  });
}

export { loadDynamicBannerText };