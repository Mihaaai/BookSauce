class User < ApplicationRecord
	has_and_belongs_to_many :books
	
	after_initialize :set_default_role, :if => :new_record?

	enum role: [:regular, :admin]

	def set_default_role
		self.role ||= :regular
	end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
