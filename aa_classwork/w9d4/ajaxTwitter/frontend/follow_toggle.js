class FollowToggle {
    constructor($el) {
        // debugger;
        this.userId = $el.data('user-id');
        this.followState = $el.data('initial-follow-state');
        this.$el = $el;
        this.render();
        this.handleClick();
    }

    render() {
        // const $button = $(".follow-toggle")
        if (this.followState === "unfollowed") {
            // .text() or .val()
            this.$el.html("Follow!");
        } else if (this.followState === "followed") {
            this.$el.html("Unfollow!");
        }
    }

    handleClick() {
        this.$el.on("click", event => {
            // debugger;
            event.preventDefault();
            if (this.followState === "unfollowed") {
                // debugger;
                return $.ajax({
                    method: 'POST',
                    url: `/users/${this.userId}/follow`,  // users /: id/ follow
                    dataType: 'json'
                }).then( () => { this.$el.data('initial-follow-state', 'followed'); this.render(); } )
            } else {
                // debugger;
                return $.ajax({
                  method: "DELETE",
                  url: `/users/${this.userId}/follow`,
                  dataType: 'json'
                }).then( () => { this.$el.data('initial-follow-state', 'unfollowed'); this.render(); } )
            }
        });
    }
}


module.exports = FollowToggle;
    // .then(() => {
    //     this.$el.attr('data-initial-follow-state', this.$el.data('initial-follow-state') === 'followed' ? 'unfollowed' : 'followed' )
    //     // $el.data("initial-follow-state", "followed")
    // });