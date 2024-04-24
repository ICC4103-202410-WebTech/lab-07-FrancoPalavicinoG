class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags

    validates :title, presence: { message: "Post must have a title"}
    validates :content, presence: { message: "Post must have content"}
    validates :user_id, presence: { message: "Post must have a User id"}
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "Answers count must be equal or greater than 0"}
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "Likes count must be equal or greater than 0"}

    before_save :set_time_now_published_at

    def set_time_now_published_at
        self.published_at = Time.zone.now if published_at.nil?
    end

end 