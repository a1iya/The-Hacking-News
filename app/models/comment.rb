class Comment < ApplicationRecord
	has_many :comment1s
	belongs_to :user
	belongs_to :link
end