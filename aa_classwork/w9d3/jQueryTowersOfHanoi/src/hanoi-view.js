class HanoiView {
    constructor(game, $el) {
        this.game = game;
        this.$el = $el;

        this.setupTowers();
    }

    setupTowers() {
        let $disk, $stack;
        // let $stacks = $('<ul>');
        for (let i = 0; i < 3; i++) {
            $stack = $('<ul>');
            for (let j = 0; j < 3; j++) {
                $disk = $("<li>");
                $stack.append($disk);
            }
            // $stacks.append($stack);
            this.$el.append($stack);
        }
        // for (let k = 3; k > 0; k--){
        //     $stacks[0].append(k);
        // }
    }


//   setupTowers() {
  

//     this.$el.empty();

//     let $tower, $disk;

//     for (let towerIdx = 0; towerIdx < 3; towerIdx++) {
//       $tower = $('<ul>');

//       for (let diskIdx = 0; diskIdx < 3; diskIdx++) {
//         $disk = $('<li>');
//         $tower.append($disk);
//       }

//       this.$el.append($tower);
//     }
//   }

    render() {

    }



}







module.exports = HanoiView;