import pokemonReducer from './pokemon_reducer'
import itemsReducer from './item_reducer'
import { combineReducers } from 'redux';

const entitiesReducer = combineReducers({
    pokemon: pokemonReducer,
});

export default entitiesReducer;