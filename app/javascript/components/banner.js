import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["paintings", "status", "drawings"],
    typeSpeed: 150,
    loop: true
  });
}

export { loadDynamicBannerText };
