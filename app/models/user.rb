class User < ApplicationRecord
    has_many :posts, dependent: :destroy

    validates :name, presence: { message: "User must have a name"}
    validates :email, presence: { message: "User must have a Email"}, uniqueness: { message: "Email must be unique"}, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Email format must be valid"}
    validates :password, presence: { message: "User must have a password"}, length: {minimum: 6, message: "User password must be at least 6 characters long"}
end