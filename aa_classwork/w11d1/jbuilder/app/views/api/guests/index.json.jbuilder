# json.array!(@guests) do |guest|
#     json.name guest.name
#     json.age guest.age
#     json.favorite_color guest.favorite_color
# end

json.array!(@guests) do |guest|
    next if guest.age < 40 || guest.age > 50
    json.partial! "api/guests/guest", guest: guest
    # json.extract! guest, :name, :age, :favorite_color
    # json.name guest.name
    # json.age guest.age
    # json.favorite_color guest.favorite_color
end

# json.guests do
#     @guests.each do |guest|
#         json.partial! "api/guests/guest", guest: guest
#     end
# end

# json.set! guest.id do
    
# end