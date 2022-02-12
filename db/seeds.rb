# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# //// Instrumental Ideas /////
# 500 miles
# country road
# maria takeuchi (plastic love) O
# back street boys everybody
# weezer island in the sun
# blink 182 all the small things
# foo fighter
# sum 41
# beatles I wanna hold your hands
# dancing queen abba
# yellow submarine
# never gonna give you up rick roll
# justin bieber sorry
# Mike Posner I took a pill in ibiza
# california love
# major lazer (light it up, lean on)
# white stripes 7 nation army
# chainsmoker -closer
# ////////// end /////////////////

puts "Cleaning up database"
puts "......"
puts "......"


# Destroy order needs to be in the following order
# Please do not change the order

Score.destroy_all
PlaylistEntry.destroy_all
Playlist.destroy_all
Composition.destroy_all
User.destroy_all
Instrumental.destroy_all

puts "Database is clean"
puts "Seeding database"
puts "......"


# ////// User Seeds ////////

byron = User.create!(
  password: "123456",
  email: "byron@gmail.com",
  username: "Byron Lee"
)

# reona = User.create!(
#   password: "123456",
#   email: "reona@gmail.com",
#   username: "Reona Kasuya"
# )

# babin = User.create!(
#   password: "123456",
#   email: "babin@gmail.com",
#   username: "Babin Bohora"
# )

# erika = User.create!(
#   password: "123456",
#   email: "erika@gmail.com",
#   username: "Erika Kawashima"
# )

# ////////// end /////////////////////////

# //////// Instrumental seeds ////////////

five_hundred_miles = Instrumental.create!(
  title: "500 Miles",
  artist: "Justin Timberlake",
  genre: "Country",
  duration: 194.4,
  bpm: 94
)


all_the_small_things = Instrumental.create!(
  title: "All the Small Things",
  artist: "Blink 182",
  genre: "Pop Punk",
  duration: 148.8,
  bpm: 149
)

lean_on = Instrumental.create!(
  title: "Lean On",
  artist: "Major Lazer",
  genre: "Electronic",
  duration: 153.6,
  bpm: 98
)

closer = Instrumental.create!(
  title: "Closer",
  artist: "Chainsmokers",
  genre: "Future Bass",
  duration: 242.4,
  bpm: 95
)

seven_nation_army = Instrumental.create!(
  title: "Seven Nation Army",
  artist: "White Stripes",
  genre: "Alternative Rock",
  duration: 211.2,
  bpm:124
)

simple_rap = Instrumental.create!(
  title: "The Simple Rap Song",
  artist: "Plague Doctor",
  genre: "Trap",
  duration: 153,
  bpm: 130
)

plastic_love = Instrumental.create!(
  title: "Plastic Love",
  artist: "Mariya Takeuchi",
  genre: "City Pop",
  duration: 270.6,
  bpm: 102
)

island_in_the_sun = Instrumental.create!(
  title: "Island in the Sun",
  artist: "Weezer",
  genre: "Alternative Rock",
  duration: 192,
  bpm: 115
)

everybody = Instrumental.create!(
  title: "Everybody",
  artist: "Backstreet Boys",
  genre: "Pop",
  duration: 207,
  bpm: 108
)
# ////////// end //////////////////////////

# ///////// Compositions Seeds ////////////
# Composition.create!(
#   memory_list: [],
#   instrumental_id:,
#   user: ,
#   rep_count:
# )

# We need to determine whether this should be an array of arrays

greetings_composition = Composition.create!(
  memory_list: ["Ohayou gozaimasu","Good morning","Konnichiwa","Hello","Konbanwa","Good evening","Oyasuminasai","Goodnight"],
  instrumental: everybody,
  user: byron,
  rep_count: 15
)

days_of_the_week_composition = Composition.create!(
  memory_list: ["Getsuyoubi","Monday","Kayoubi","Tuesday","Suiyoubi","Wednesday","Mokuyoubi","Thursday", "Kinyoubi", "Friday"],
  instrumental: closer,
  user: byron,
  rep_count: 10
)

verbs_composition = Composition.create!(
  memory_list: ["Suru","To do","Miru","To see","Kiku","To listen","Hanasu","To speak", "Iu","To say","Kaku","To write","Taberu","To eat","Nomu","To drink","Aruku","To walk","Hashiru","To run","Suwaru","To sit","Tatsu","To stand"],
  instrumental: all_the_small_things,
  user: byron,
  rep_count: 20
)
# ////////// end //////////////////////////////


# /////////// Playlist Seeds //////////////////

greetings_playlist = Playlist.create!(
  name: "Greetings",
  user: byron
)

days_of_the_week_playlist = Playlist.create!(
  name: "Days of the Week",
  user: byron
)

verbs_playlist = Playlist.create!(
  name: "Japanese Verbs",
  user: byron
)

# ///////////// end /////////////////////

# ///////////// PlaylistEntry Seeds /////////////////////

PlaylistEntry.create!(
  composition: greetings_composition,
  playlist: greetings_playlist
)

PlaylistEntry.create!(
  composition: days_of_the_week_composition,
  playlist: days_of_the_week_playlist
)

PlaylistEntry.create!(
  composition: verbs_composition,
  playlist: verbs_playlist
)

# ///////////// end /////////////////////


# ///////////// Score Seeds /////////////////////

Score.create!(
  score: 5,
  composition: greetings_composition
)

Score.create!(
  score: 20,
  composition: days_of_the_week_composition
)

Score.create!(
  score: 20,
  composition: verbs_composition
)

# ///////////// end /////////////////////
