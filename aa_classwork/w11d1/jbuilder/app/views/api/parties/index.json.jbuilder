# json.extract! @parties, :name
# json.parties @parties do |party|
#     json.extract! party, :name
# end
json.array! @parties, :name