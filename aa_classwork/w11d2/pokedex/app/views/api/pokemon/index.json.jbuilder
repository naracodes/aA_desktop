@pokemon.each do |poke|
  json.set! poke.id do # top level key/id
    json.extract! poke, :id, :name
    json.image_url asset_path("pokemon_snaps/#{poke.image_url}")
  end
end