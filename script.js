let typer = document.querySelector('#typer');

let typerText = typer.innerText;
let substringLength = 0;

// let wordList = ['Lorem', 'ipsum', 'dolor', 'sit', 'amet'];
let wordList = [
  "Hello, I'm Ashvin Kasture",
  'I am final year undergrad from JNEC',
  'I am good at Software Development, Full Stack Development, App Development and Cybersecurity',
  'Welcome to my Portfolio!',
];
let wordIndex = 0;

let blink = true;
let blinkState = true;

const upInterval = () => {
  typerText = wordList[wordIndex];
  blink = false;
  let increaseInterval = setInterval(() => {
    if (substringLength == typerText.length) {
      clearInterval(increaseInterval);
      blink = true;
      setTimeout(downInterval, 2000);
    }
    typer.innerHTML =
      typerText.substring(0, substringLength++) +
      '<span id="cursor" class="cursor-show">|</span>';
  }, 50);
};

const downInterval = () => {
  blink = false;
  let decreaseInterval = setInterval(() => {
    if (substringLength == 0) {
      clearInterval(decreaseInterval);
      wordIndex = (wordIndex + 1) % wordList.length;
      upInterval();
    }
    typer.innerHTML =
      typerText.substring(0, substringLength--) +
      '<span id="cursor" class="cursor-show">|</span>';
  }, 50);
};

upInterval();

let cursorInterval = setInterval(() => {
  let text = typer.innerText;
  let lastChar = text[text.length - 1];
  if (blink) {
    // console.log(`last char is =${lastChar}=`);
    // console.log(typer.innerText.substring(0, typer.innerText.length - 1));
    // console.log(text);
    // console.log(text.substring(0, text.length));
    let show = document
      .querySelector('#cursor')
      .classList.contains('cursor-show');
    if (show) {
      //   console.log('change');
      //   typer.innerHTML =
      //     typer.innerText.substring(0, typer.innerText.length - 1) + '&nbsp;';

      //   console.log('hide');
      //   typer.innerText = text.substring(0, text.length - 1) + ' ';
      //   console.log('now');
      //   console.log(typer.innerText);
      document.querySelector('#cursor').classList.add('cursor-hide');
      document.querySelector('#cursor').classList.remove('cursor-show');
    } else {
      //   typer.innerHTML =
      //     typer.innerText.substring(0, typer.innerText.length - 1) +
      //     '<span id="cursor">|</span>';
      //   console.log('show');
      //   typer.innerText = text.substring(0, text.length - 1) + '|';
      document.querySelector('#cursor').classList.remove('cursor-hide');
      document.querySelector('#cursor').classList.add('cursor-show');
    }
  } else {
    document.querySelector('#cursor').classList.remove('cursor-hide');
    document.querySelector('#cursor').classList.add('cursor-show');
  }
}, 500);

document.querySelector('.about-link').addEventListener('click', () => {
  document.querySelector('.skills-link').classList.remove('active-link');
  document.querySelector('.projects-link').classList.remove('active-link');
  document.querySelector('.about-link').classList.add('active-link');
  document.querySelector('#about').scrollIntoView({ behavior: 'smooth' });
});

document.querySelector('.skills-link').addEventListener('click', () => {
  document.querySelector('.about-link').classList.remove('active-link');
  document.querySelector('.projects-link').classList.remove('active-link');
  document.querySelector('.skills-link').classList.add('active-link');
  document.querySelector('#skills').scrollIntoView({ behavior: 'smooth' });
  setTimeout(setAllMeters, 500);
});

const setMeter = (className, max) => {
  let current = 0;
  let meterInterval = setInterval(() => {
    if (current >= max) {
      clearInterval(meterInterval);
    }
    current += max / 100;
    document.querySelector(`.${className}-meter`).value = current;
  }, 10);
};

const setAllMeters = () => {
  const meterObject = {
    python: 90,
    javascript: 80,
    java: 75,
    cpp: 65,
    mern: 70,
    flutter: 85,
    electron: 85,
    django: 65,
    mysql: 0,
    postgres: 0,
    mongo: 0,
    sqlite: 0,
  };

  setMeter('python', 90);
  setMeter('javascript', 80);
  setMeter('java', 75);
  setMeter('cpp', 50);
  setMeter('mern', 70);
  setMeter('flutter', 85);
  setMeter('electron', 85);
  setMeter('django', 50);
  setMeter('mysql', 90);
  setMeter('postgres', 60);
  setMeter('mongo', 75);
  setMeter('sqlite', 90);
};
