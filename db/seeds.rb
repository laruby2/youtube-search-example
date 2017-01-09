# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Word.delete_all

words = Word.create([{ word: 'penguin'}, { word: 'baseball'}])

Search.create(word: words.last, result: "take me out to the ball game")
Search.create(word: words.last, result: "take me out to the ball game")
Search.create(word: words.last, result: "take me out to the ball game")
Search.create(word: words.last, result: "Gee! it's a wonderful game")
