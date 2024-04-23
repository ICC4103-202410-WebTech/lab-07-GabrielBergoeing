class Post < ApplicationRecord
    belongs_to :user
    has_many :posts_tags
    has_many :tags, through: :posts_tags
    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_post, class_name: "Post", foreign_key: "parent_post_id"

    validates :title, presence: true
    validates :content, presence: true
    validates :user_id, presence: true
    validates :answers_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 },  presence: true
    validates :likes_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 },  presence: true

    before_save :set_default_time

    private
        def set_default_time
            self.published_at ||= Time.current
        end
end