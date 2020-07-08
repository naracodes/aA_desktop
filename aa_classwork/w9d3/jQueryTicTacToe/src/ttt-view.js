class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el;
    this.setupBoard();
    this.bindEvents();
  }


  bindEvents() {
    this.$el.on("click", "li", event => {
      const $square = $(event.currentTarget);
      this.makeMove($square);
    });
  }

  makeMove($square) {
    const currentPlayer = this.game.currentPlayer;
    const pos = $square.data("pos");
    
    // this.game.playMove(pos);
    
    
    try {
      this.game.playMove(pos);
    } catch (e) {
      alert(e.msg);
      return;
    }

    $square.addClass(currentPlayer)   
    if (this.game.isOver()) {
      this.$el.off("click");
      return `${this.game.winner()} wins!`;
    }
    

  }

  setupBoard() {
    let $grid = $('<ul>');
    for (let i = 0; i < 3; i++) {
      for (let j = 0; j < 3; j++) {
        let $li = $('<li>');
        $li.data('pos', [i, j]);
        $grid.append($li);
      }
    }

    this.$el.append($grid);
  }

}

module.exports = View;
