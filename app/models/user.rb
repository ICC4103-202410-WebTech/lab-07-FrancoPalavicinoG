class User < ApplicationRecord
    has_many :posts, dependent: :destroy

    validates :name, presence: { message: "must be present"}
    validates :email, presence: { message: "must be present"}, uniqueness: { message: "must be unique"}, format: { with: URI::MailTo::EMAIL_REGEXP, message: "format must be valid"}
    validates :password, presence: { message: "must be present"}, length: {minimum: 6, message: "must be at least 6 characters long"}
end