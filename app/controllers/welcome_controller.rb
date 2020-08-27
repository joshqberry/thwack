class WelcomeController < ApplicationController

  def index
    @users = User.all
    @user = current_user
    @mastercomics = Mastercomic.all
    @mastercomic = Mastercomic.new
  end

end
