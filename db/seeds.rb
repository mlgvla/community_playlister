# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])


#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ first_name: "Monica", last_name: "Gerard", email: "monica@mail.com", password: "pwmg" }, { first_name: "Tom", last_name: "Sefcovic", email: "tom@mail.com", password:  "pwts"}, { first_name: "Nate" , last_name: "Sefcovic", email: "nate@mail.com", password: "ptns" }, { first_name: "Seyr", last_name: "Sefcovic", email: "seyr@mail.com", password: "ptss" }, { first_name: "Amanda", last_name: "D'Autrechey", email: "amanda@mail.com", password: "ptad" }, { first_name: "John", last_name: "Sefcovic", email: "john@mail.com", password: "pwjs"}, { first_name: "Lois", last_name: "Sefcovic", email: "lois@mail.com", password: "pwls" }, { first_name: "Ingrid", last_name: "Cohen", email: "ingrid@mail.com", password: "pwic" }, { first_name: "Merle", last_name: "Keitel", email: "merle@mail.com", password: "pwmk" }, { first_name: "Dale", last_name: "Blumenthal", email: "dale@mail.com", password: "pwdb" }])

tracks = Track.create([{ title: "Cats are Awesome", artist_id: , album_id: , duration_ms: , preview_url: "blob" }, { title: "Dogs are Awesome", artist_id: , album_id: , duration_ms: , preview_url: "blob" }, { title: "Birds are Amazing", artist_id: , album_id: , duration_ms: , preview_url: "blob" }, { title: "I Like Aardvarks", artist_id: , album_id: , duration_ms: , preview_url: "blob" }, { title: "Snakes are Slithery", artist_id: , album_id: , duration_ms: , preview_url: "blob" }, { title: "Fishes Glug", artist_id: , album_id: , duration_ms: , preview_url: "blob" }, { title: "Cows Go Moo", artist_id: , album_id: , duration_ms: , preview_url: "blob" }, { title: "Tacos are Real", artist_id: , album_id: , duration_ms: , preview_url: "blob" }, { title: "Mozart is Groovy", artist_id: , album_id: , duration_ms: , preview_url: "blob" }, { title: "Viola Rules", artist_id: , album_id: , duration_ms: , preview_url: "blob" }])

playlists = Playlist.create([{ name: "Animals Toonz" }, { name: "Weird Pets" }, { name: "Music Things" }, { name: "Aquarium Guys" }, { name: "Classical Gas" }, { name: "House Pets" }, { name: "Four Legged Things" },{ name: "Flying Things" },{ name: "Weird Animals" },{ name: "Mexican Things" }])

albums = 

artist = 