# json.array!(@gifts) do |gift|
#     json.extract! gift, :title, :description
# end

# json.gifts(@gifts) do |gift|
#     gift.guest_id
# end

json.array!(@gifts) do |gift|
    json.extract! gift, :title, :description
end