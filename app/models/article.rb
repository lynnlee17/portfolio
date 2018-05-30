class Article < ApplicationRecord
    has_many :commens
	validates :title, presence: true,
					  length: { minimum: 5 }
end
