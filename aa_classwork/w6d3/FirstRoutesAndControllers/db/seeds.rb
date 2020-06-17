# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

torin = User.create(username: 'torin')
rosemary = User.create(username: 'rosemary')
nara = User.create(username: 'nara')

a1 = Artwork.create(title: 'a1', image_url: 'abc.com', artist_id: 1)
a2 = Artwork.create(title: 'a2', image_url: 'abcd.com', artist_id: 2)
a3 = Artwork.create(title: 'a3', image_url: 'abce.com', artist_id: 3)

as1 = ArtworkShare.create(a1.id, torin.id)
as2 = ArtworkShare.create(a3.id, nara.id)