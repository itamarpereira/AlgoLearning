import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["AlgoLearning"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
