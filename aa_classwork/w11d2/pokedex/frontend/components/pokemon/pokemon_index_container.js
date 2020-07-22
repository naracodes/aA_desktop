import { connect } from 'react-redux';
import { requestAllPokemon } from '../../actions/pokemon_actions';
import { selectAllPokemon } from '../../reducers/selector';
import PokemonIndex from './pokemon_index';

const mapStateToProps = state => {
    debugger
    return { // current redux state;
    
    // piece of state that container subscribes to
    // pass in pokemon as props; get the key of poke out of state;
    pokemon: selectAllPokemon(state) 
    // this arr will be passed to PokemonIndex as props, and will be mapped through;
}};

const mapDispatchToProps = dispatch => {
    return {
    
    requestAllPokemon: () => dispatch(requestAllPokemon()) // dispatch requestAllPokemon action.
    // grab data from the backend, update it (by dispatching the action), and pass it to the store, so that we'll have the new state rendered;
}};

export default connect(
    mapStateToProps, 
    mapDispatchToProps
)(PokemonIndex);