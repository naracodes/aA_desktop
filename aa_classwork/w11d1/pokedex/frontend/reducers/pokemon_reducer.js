import { RECEIVE_ALL_POKEMON } from '../actions/pokemon_actions';
import { merge } from 'lodash';

const pokemonReducer = (state = {}, action) => {
    Object.freeze(state);

    switch (action.type) {
        case RECEIVE_ALL_POKEMON:
            let tempState = {};

            Object.values(action.pokemon).forEach(poke => {
                let newPoke = {
                    [poke.id]: poke
                };
                tempState.merge({}, tempState, newPoke);
            });

            const newState = merge({}, state, newState);
            return newState;

        default:
            return state;
    }
}

// {
//   1: {
//     id: 1,
//     name: /*...*/,
//     image_url: /*...*/
//   },
//   2: {
//     id: 2,
//     name: /*...*/,
//     image_url: /*...*/
//   },
//   //..
// }

export default pokemonReducer;