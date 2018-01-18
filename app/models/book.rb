class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :profiles

	validates_presence_of :title, :category_id, :author_id
	
	validates_length_of :title, :maximum => 255
	validates_length_of :abstract, :maximum => 700 #around 100 words
	validates_length_of :summary, :maximum => 7000 #around 1000 words
	#validates_length_of :photo, :maximum => 255 #around 1000 words
	validates_length_of :summary, :maximum => 7000 #around 1000 words

	validates_numericality_of :category_id, :only_integer => true
	validates_numericality_of :author_id, :only_integer => true

	validates_uniqueness_of :title, scope: [:author_id]

	validates_associated :author
	validates_associated :category	

end
