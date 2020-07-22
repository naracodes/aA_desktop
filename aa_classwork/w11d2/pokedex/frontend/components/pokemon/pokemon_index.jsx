import React from 'react';

class PokemonIndex extends React.Component{
    constructor(props){
        super(props)
        debugger;
    }

    componentDidMount(){
        debugger;
        this.props.requestAllPokemon();
    }

    render() {
        debugger;
        // props: anything information that dev can pass in; 
        const pokes = this.props.pokemon;
        debugger;
       // first time redux hits render, the props is an empty obj, which then will be populated by the componentDidMount(ajax request)
           return (
            <ul>
                {pokes.map(poke =>
                    <> 
                    <li key={poke.id}>{poke.name}</li>
                    <img src={poke.image_url}/> 
                    </>
                )}
            </ul>
           )
    }
}

export default PokemonIndex;

// you cannot return an obj interpolated inbetween html tag; 
// so we rather return attributes, such as .name;
