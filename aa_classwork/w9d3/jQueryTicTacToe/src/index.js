const View = require("./ttt-view")
const Game = require("../tttNode/game")




  $(() => {
    // Your code here
    const game = new Game();
    new View(game, $(".ttt"));

    // const instance = $(".ttt")
    // const game = new Game();
    // new View(game, instance);
    
  });




console.log("tictactoe");