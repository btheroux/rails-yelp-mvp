# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Fu Hao",
    address:      "Langgade 1809 Copenhagen",
    phone_number: "00000000",
    category:     "chinese"
  },
  {
    name:         "Nakama Izakaya",
    address:      "Solvej 62 Copenhagen",
    phone_number: "00000000",
    category:     "japanese"
  },
  {
    name:         "Mama Mia",
    address:      "Strøget 231 Copenhagen",
    phone_number: "00000000",
    category:     "italian"
  },
  {
    name:         "Royal Garden",
    address:      "Gladvej 19 Copenhagen",
    phone_number: "00000000",
    category:     "chinese"
  },
  {
    name:         "Oui Oui",
    address:      "Ahornsgade 15 Copenhagen",
    phone_number: "00000000",
    category:     "french"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

puts 'Creating reviews...'
reviews_attributes = [
  {
    content:      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium voluptas quisquam sequi reiciendis itaque ipsum distinctio eos, pariatur architecto nam provident quas id omnis doloribus assumenda tempora officia laborum dolore.",
    rating:       4,
    restaurant:   Restaurant.first
  },
  {
    content:      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia eum fugit ut, ea perferendis totam deleniti at, qui accusamus quas amet quisquam quasi adipisci explicabo error! Ipsa fugit, amet obcaecati!",
    rating:       3,
    restaurant:   Restaurant.first
  },
  {
    content:      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor saepe obcaecati, incidunt possimus illum reiciendis laborum labore quae cupiditate beatae quibusdam, ea tempora molestias pariatur tempore ex dolorem qui aliquid.",
    rating:       5,
    restaurant:   Restaurant.second
  },
  {
    content:      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, reprehenderit ut voluptas, porro, perferendis voluptate expedita iste beatae molestias inventore amet libero aliquam. Quas, iste sequi laudantium. Id, accusantium quasi!",
    rating:       4,
    restaurant:   Restaurant.second
  },
  {
    content:      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat explicabo nostrum officia beatae nobis totam sed veritatis ducimus ratione nisi eius nam culpa, provident in corporis rerum repellat. Totam, cumque.",
    rating:       3,
    restaurant:   Restaurant.third
  },
  {
    content:      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius aperiam, labore impedit harum iste repellat doloremque quibusdam inventore quod nesciunt nihil magnam vero accusantium quae ab corrupti, sit ipsam sint.",
    rating:       2,
    restaurant:   Restaurant.third
  },
  {
    content:      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil natus distinctio iusto autem voluptate itaque id atque, qui minima repudiandae commodi temporibus tempore enim error aliquid consequuntur cum unde harum.",
    rating:       5,
    restaurant:   Restaurant.fourth
  },
  {
    content:      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit magnam dolores praesentium id nisi eos nemo. Explicabo quia aut, rem sapiente pariatur minus odit, hic dolorum veritatis temporibus dolorem ipsa.",
    rating:       5,
    restaurant:   Restaurant.fourth
  },
  {
    content:      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam perspiciatis dolore nisi esse ut modi enim omnis necessitatibus, ipsa quis sint, distinctio est amet dolor suscipit facilis, commodi molestiae ipsum.",
    rating:       4,
    restaurant:   Restaurant.last
  }
]
Review.create!(reviews_attributes)
puts 'Finished!'
