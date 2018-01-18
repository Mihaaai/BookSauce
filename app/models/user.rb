class User < ApplicationRecord	
	has_many :comments
	has_one :profile

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
