export const fetchAllPokemon = () => (
    $.ajax({
        method: 'GET',
        url: '/api/pokemon'
        // to fetch all the pokemon objs from the backend
    })
)
