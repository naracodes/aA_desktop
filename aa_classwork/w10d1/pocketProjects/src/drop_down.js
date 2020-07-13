
const dogs = {
  "Corgi": "https://www.akc.org/dog-breeds/cardigan-welsh-corgi/",
  "Australian Shepherd": "https://www.akc.org/dog-breeds/australian-shepherd/",
  "Affenpinscher": "https://www.akc.org/dog-breeds/affenpinscher/",
  "American Staffordshire Terrier": "https://www.akc.org/dog-breeds/american-staffordshire-terrier/",
  "Tosa": "https://www.akc.org/dog-breeds/tosa/",
  "Labrador Retriever": "https://www.akc.org/dog-breeds/labrador-retriever/",
  "French Bulldog": "https://www.akc.org/dog-breeds/french-bulldog/" 
};

function dogLinkCreator() {
  const dogLinks = [];
  const dogBreeds = Object.keys(dogs);
  dogBreeds.forEach(breed => {
    // debugger;
    let anchor = document.createElement('a');
    anchor.innerHTML = breed;
    anchor.href = dogs[breed];
    let list = document.createElement('li');
    // list.classList.add('dog-link');
    list.className += 'dog-link';
    list.appendChild(anchor);
    dogLinks.push(list);
    // dogLinks.push(list.appendChild(anchor));
  })

  return dogLinks;
}

function attachDogLinks() {
  let dogLinks = dogLinkCreator();
  // debugger;
  dogLinks.forEach (link => {
    let dropDown = document.getElementsByClassName('drop-down-dog-list')[0];
    // let dropDown = document.querySelector('.drop-down-dog-list');
    // debugger;
    dropDown.appendChild(link);
  });
};

function handleEnter() {
  let mouseTarget = document.querySelector('.drop-down-dog-nav');
  mouseTarget.addEventListener("mouseenter", e => {
    let links = document.querySelectorAll('.dog-link');
    links.forEach(link => {
      link.style.display = "block";
    });
    // link.hidden = false;
  });
}

function handleLeave() {
  let mouseTarget = document.querySelector('.drop-down-dog-nav');
  mouseTarget.addEventListener("mouseleave", e => {
    let links = document.querySelectorAll('.dog-link');
    links.forEach(link => {
      link.style.display = "none";
    })
  });
}

// function handleEnter () {
//   let dropDown = document.querySelectorAll('dog-link');
//   dropDown.forEach (el => {
//     el.style.display = "block"
//   });

// };

// function handleLeave () {
//   let dropDown = document.querySelectorAll('dog-link');
//   dropDown.forEach (el => {
//     el.style.display = "none"
//   });

// };

// const parentDropDown = document.querySelector('.drop-down-dog-nav');

// parentDropDown.addEventListener("mouseenter", handleEnter)
// parentDropDown.addEventListener("mouseleave", handleLeave);

attachDogLinks();
handleEnter();
handleLeave();