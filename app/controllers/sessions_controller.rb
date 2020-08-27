class SessionsController < ApplicationController

  def new
    @user = current_user
  end

  def create
    @user = User.find_by(name: params[:session][:name])
      # probably want to add the .downcase back to this but then need to add to signup as well

  if @user && @user.authenticate(params[:session][:password])
     # The above code is searching the database for a user with an email address that matches
     # the email address provided for the session.
     # The if statement is setting a requirement that says: for a login to occur, the user has
     # to exist AND the user has to be authenticated via the password provided for the session.
     session[:user_id] = @user.id
     flash.now[:danger] = 'Some shit here'

     redirect_to(@user)

   else
     flash.now[:danger] = 'Invalid name/password combination'
     render 'new'
   end


  end

  def destroy
      @user = User.new
      session.destroy
      flash.now[:danger] = 'You have signed out.'
      redirect_to root_path

    end

end
