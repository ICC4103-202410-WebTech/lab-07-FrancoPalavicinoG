# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
PostTag.delete_all
Post.delete_all
Tag.delete_all
User.delete_all


usr1 = User.create!(
    name: 'John Doe',
    email: 'jdoez@example.com',
    password: '123456789'
)

usr2 = User.create!(
    name: 'Rick Sanchez',
    email: 'rick@example.com',
    password: 'WubbaLubbaDubDub'
)

usr3 = User.create!(
    name: 'Morty Smith',
    email: 'morty@example.com',
    password: 'OhJeezRick'
)

usr4 = User.create!(
    name: 'Jerry Smith',
    email: 'jerry@example.com',
    password: 'HungryForApples'
)

usr5 = User.create!(
    name: 'Mr. Meeseeks',
    email: 'meeseeks@example.com',
    password: 'ExistenceIsPain'
)



pst1 = Post.create!(
    title: 'Post 1',
    content: 'Hello World??',
    user: usr1,
    published_at: Time.now,
    answers_count: 50,
    likes_count: 100
)

pst2 = Post.create!(
    title: 'El segundo mejor post',
    content: 'Este es el contenido del segundo mejor post del mundo',
    user: usr1,
    published_at: Time.now,
    answers_count: 17,
    likes_count: 17
)

pst3 = Post.create!(
    title: 'I Turned Myself into a Pickle!',
    content: 'I turned myself into a pickle, Morty! Boom! Big reveal! Im a pickle!',
    user: usr2,
    published_at: Time.now,
    answers_count: 50,
    likes_count: 100
)

pst4 = Post.create!(
    title: 'Wubba Lubba Dub Dub!',
    content: 'Wubba lubba dub dub! Thats my new catchphrase!',
    user: usr2,
    published_at: Time.now,
    answers_count: 10,
    likes_count: 250
)

pst5 = Post.create!(
    title: 'Existence is pain',
    content: 'Trying to survive high school and interdimensional adventures',
    user: usr3,
    published_at: Time.now,
    answers_count: 15,
    likes_count: 300
)

pst6 = Post.create!(
    title: 'In a different dimension',
    content: 'Im a different me!',
    user: usr3,
    published_at: Time.now,
    answers_count: 25,
    likes_count: 15
)

pst7 = Post.create!(
    title: 'Im a Jerry',
    content: 'Just trying my best!',
    user: usr4,
    published_at: Time.now,
    answers_count: 50,
    likes_count: 100
)

pst8 = Post.create!(
    title: 'Pickle Rick!',
    content: 'I cant believe you turned yourself into a pickle!',
    user: usr4,
    published_at: Time.now,
    answers_count: 50,
    likes_count: 100
)

pst9 = Post.create!(
    title: 'Im Mr. Meeseeks!',
    content: 'Im Mr. Meeseeks, look at me!',
    user: usr5,
    published_at: Time.now,
    answers_count: 9,
    likes_count: 300
)

pst10 = Post.create!(
    title: 'Existence is pain',
    content: 'I just want to fulfill my purpose!',
    user: usr5,
    published_at: Time.now,
    answers_count: 6,
    likes_count: 150
)

tg1 = Tag.create!(
  name: "#learningRubyonRails"
) 

tg2 = Tag.create!(
  name: "#C137"
) 

tg3 = Tag.create!(
  name: "#ohgeez"
) 

tg4 = Tag.create!(
  name: "#JerryTerryLarryGarry"
) 

tg5 = Tag.create!(
  name: "#MrMeeseeks"
) 

pst1.tags << tg1
pst2.tags << tg1
pst3.tags << tg2
pst4.tags << tg2
pst5.tags << tg3
pst6.tags << tg3
pst7.tags << tg4
pst8.tags << tg4
pst9.tags << tg5
pst10.tags << tg5