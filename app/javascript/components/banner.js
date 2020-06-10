import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.querySelector(".banner");
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["AlgoLearning"],
      typeSpeed: 100,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
