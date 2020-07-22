# json.extract! @pokemon, :id, :name, :image_url
# jbuilder is a library to fomat ruby in json, which then can be easily recognized by the browser and JS

json.pokemon do
    json.extract! @pokemon, :id, :name, :attack, :defense, :moves, :poke_type, :image_url, :item_ids 
    # @pokemon is a single instance obj
    # has_many items -> 'item_ids' is a method, b/c 'collection_singular_ids' syntax
    # https://guides.rubyonrails.org/association_basics.html#detailed-association-reference
    json.image_url asset_path("pokemon_snaps/#{@pokemon.image_url}")
end

json.items do
    # do-end creates an obj
    @pokemon.items.each do |item|
        json.set! item.id do
        # .set creates an id
            json.extract! item, :id, :name, :pokemon_id, :price, :happiness, :image_url
        end
    end
end