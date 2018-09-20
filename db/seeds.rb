# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
PastaType.destroy_all

puts 'Creating test user & Pasta Types...'

user = User.new(
  email: "test@test.com",
  password: 'azerty',
  name: 'Thom',
  address: '53 cours Vitton Lyon',
  phone_number: '0456743456')
user.save!

puts 'test user OK'

pasta_types_names = ['Gnocci', 'Orecchiette', 'Fusili', 'Penne', 'Tortiglioni']

puts 'Array pasta type OK'

url_pasta_type = ['https://static.cuisineaz.com/610x610/i9837-gnocchi-di-patate.jpg',
  'https://cdn.shopify.com/s/files/1/1935/9089/products/rustichella-dabruzzo-orecchiette-product-shot-1000x1000_530x@2x.jpg?v=1523665518',
  'https://static3.depositphotos.com/1000789/120/i/950/depositphotos_1208604-stock-photo-pasta-fusili-as-background.jpg',
  'http://static.pratico-pratiques.com/uploads/images/recipe_express/orig/c06248832d33b84d1ed86225e06968fb/pennes-sauce-cremeuse-au-parmesan-et-courge-butternut.jpeg',
  'https://st.depositphotos.com/1011845/2049/i/950/depositphotos_20497449-stock-photo-pasta-tortiglioni.jpg'
]

puts 'array url OK'

i = 4
5.times do
  pasta_type = PastaType.new(name: pasta_types_names[i])
  pasta_type.remote_photo_url = url_pasta_type[i]
  pasta_type.save!

  i -= 1
end

puts 'Finished!'
