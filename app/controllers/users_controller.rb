class UsersController < ApplicationController

  def index
    @users = User.all

    @user = User.new

  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])

    @wantcomics = @user.wantcomics.all
    @havecomics = @user.havecomics.all

    @havearray = @user.havelist
    @wantarray = @user.wantlist

    @users = User.all

    @users.each do |user|
    @intersection = @havearray & user.wantlist
  end

  end


  def create

    @user = User.new(user_params)
      if @user.save
        log_in(@user)
        # This flash alert is not working; not dealing with it but will leave it here for now
        redirect_to user_path(@user)
        flash[:success] = "Congratulations! You signed up!"

      else
        render 'new'
      end

  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
      flash[:success] = "User deleted"
      redirect_to root_path
  end

    private

    def user_params
      params.require(:user).permit(:name, :email, :wantlist, :havelist, :password,
                                   :password_confirmation)
    end

end
