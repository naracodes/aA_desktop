import Level from './level';
export default class FlappyBird {
  constructor(canvas){
    this.ctx = canvas.getContext("2d");
    this.dimensions = { width: canvas.width, height: canvas.height };
    this.level = new Level(this.dimensions);
  }
  
  // document.getElementByID("bird-game").animate([
  //   {transform: "translateY(0px)"},
  //   {transform: "translateY(-300px)"}
  // ], {
  //   duration: 1000, 
  //   iterations: infinity
  // })

  animate() {

  }

  restart() {
    this.level.animate();
  }

}