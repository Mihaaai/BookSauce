class WelcomeController < ApplicationController
	#require authentification
  before_action :authenticate_user!
  def index

  end

end
