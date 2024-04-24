class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags

    validates :name, presence: { message: "Tag must have a name"}, uniqueness: { message: "Name must be unique"}
end