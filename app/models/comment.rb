class Comment < ApplicationRecord	
  belongs_to :book
  belongs_to :user

  enum rating: [:one, :two, :three, :four, :five]
  enum role: [:regular, :admin]

end
