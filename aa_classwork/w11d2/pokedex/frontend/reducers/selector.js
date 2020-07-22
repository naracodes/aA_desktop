export const selectAllPokemon = (state) => {
// export const selectAllPokemon = {entities.pokemon} => {
    // destructuring obj
    // {} represents one level outside ("state") -> we're going to find entities.pokemon;
    // debugger
    const keys = Object.keys(state.entities.pokemon);
    // return an array of keys; 
    
    // root reducer is the outer most {};
    // which holds entities reducer, which is named as the "entities(key)",
    // and is evaluated to a selected obj of pokemon;

    return keys.map(id => state.entities.pokemon[id]);
}

