# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat_1 = Cat.create!(birth_date: '2015/01/20', color: 'pink', name: 'Tibbles', sex: 'F', description: 'I am cuddly')
cat_2 = Cat.create!(birth_date: '1892/01/01', color: 'red', name: 'Tiger', sex: 'M', description: 'I like to eat berries')
cat_3 = Cat.create!(birth_date: '1931/07/02', color: 'black', name: 'Lovely', sex: 'F', description: 'I love Fridays!')
cat_4 = Cat.create!(birth_date: '1066/10/10', color: 'gold', name: 'Cola', sex: 'M', description:'I am very dead')
cat_5 = Cat.create!(birth_date: '2015/01/24', color: 'blue', name: 'Coca', sex: 'F', description: 'I am Coca!')
