const FollowToggle = require("./follow_toggle");

$(() => {
    const followT = $('.follow-toggle');
    followT.each( (index, el) => {
        new FollowToggle($(el));    // converting 'el' to jQuery object(it was initially in HTML form)
    })
});

// new FollowToggle(followT);
// const game = new HanoiGame();
// new HanoiView(game, rootEl);
