import React from 'react';
import { Provider } from 'react-redux';
import PokemonIndexContainer from './pokemon/pokemon_index_container';

const Root = ({ store }) => (
    <Provider store={store}>
        <PokemonIndexContainer /> 
        <div>Hello, world!</div>
    </Provider>
);

// no need to import pokemon index component;
export default Root;