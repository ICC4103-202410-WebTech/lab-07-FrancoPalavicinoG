class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    belongs_to :parent_post, class_name: "Post", optional: true, foreign_key: "parent_post_id"
    has_many :child_posts, class_name: "Post", foreign_key: "parent_post_id"

    validates :title, presence: { message: "must be present"}
    validates :content, presence: { message: "must be present"}
    validates :user_id, presence: { message: "id must be present"}
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "must be equal or greater than 0"}
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "must be equal or greater than 0"}

    before_save :set_time_now_published_at

    def set_time_now_published_at
        self.published_at = Time.zone.now if published_at.nil?
    end

end 