json.extract! @party, :name
json.guests @party.guests  do |guest|
    json.extract! guest, :name
    json.gifts guest.gifts do |gift|
        json.extract! gift, :title
    end
    # json.extract! guest, :name, :gifts
    # json.array! guest.gifts do |gift|
    #     json.extract! guest, :name
    #     json.extract! gift, :title, :description
    # end
    # json.extract! gifts, :title
end
# json.guests  do
#     @party.guests.each do |guest|
#         json.extract! guest, :name
#     end
# end

# json.guests do
#     @party.each do |party|
#         party.guests do |guest|
#             json.extract! guest, :name
#         end
#     end
# end