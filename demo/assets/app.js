(() => {
  const header = document.querySelector('.site-header');
  const toggle = document.querySelector('.menu-toggle');
  const menu = document.querySelector('.menu');
  const yearNode = document.querySelector('[data-year]');
  const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  if (yearNode) yearNode.textContent = new Date().getFullYear();

  if (toggle && menu) {
    toggle.addEventListener('click', () => {
      const open = menu.getAttribute('data-open') === 'true';
      menu.setAttribute('data-open', String(!open));
      toggle.setAttribute('aria-expanded', String(!open));
    });

    menu.querySelectorAll('a').forEach((link) => {
      link.addEventListener('click', () => {
        menu.setAttribute('data-open', 'false');
        toggle.setAttribute('aria-expanded', 'false');
      });
    });
  }

  const setScrolled = () => {
    if (!header) return;
    header.classList.toggle('scrolled', window.scrollY > 8);
  };
  window.addEventListener('scroll', setScrolled, { passive: true });
  setScrolled();

  const revealElements = document.querySelectorAll('.reveal');
  if (!reduceMotion && revealElements.length && 'IntersectionObserver' in window) {
    const io = new IntersectionObserver((entries, observer) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add('in-view');
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.14 });

    revealElements.forEach((el) => io.observe(el));
  } else {
    revealElements.forEach((el) => el.classList.add('in-view'));
  }
})();
