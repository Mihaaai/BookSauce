class Book < ApplicationRecord
	belongs_to :category
	has_many :comments, dependent: :delete_all
	has_and_belongs_to_many :users
end
