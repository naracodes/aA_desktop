export default class Level {
  constructor(dimensions) {
    this.dimensions = dimensions;
    this.ctx = document.getElementById("bird-game").getContext("2d");
  }
  animate(){
    drawBackground(this.ctx);
  }
  drawBackground(ctx) {
    ctx.fillStyle = "skyblue";
    ctx.fillRect(0, 0, this.dimensions.width, this.dimensions.height);
  }
}