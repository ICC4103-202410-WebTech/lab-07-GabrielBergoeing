class Tag < ApplicationRecord
	has_many :posts_tags
    has_many :posts, through: :posts_tags

    before_validation :normalize_name
	before_validation :remove_whitespaces
    validates :name, uniqueness: true, presence: true

	private
		def normalize_name
			self.name = name.downcase.titlecase
		end
		def remove_whitespaces
			self.name = name.strip
		end

end