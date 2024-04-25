# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all
PostTag.delete_all
Tag.delete_all

usr1 = User.create!(
    name: 'John Doe',
    email: 'jdoez@example.com',
    password: '123456789'
)

pst1 = Post.create!(
    title: 'I Turned Myself into a Pickle!',
    content: 'I turned myself into a pickle, Morty! Boom! Big reveal! Im a pickle!',
    user: usr1,
    published_at: Time.now,
    answers_count: 50,
    likes_count: 100
)

tg1 = Tag.create!(
  name: "#picklerick"
)

pst1.tags << tg1