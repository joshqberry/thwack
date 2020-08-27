class HavecomicsController < ApplicationController
  def index
    @havecomics = Havecomic.all
  end

  def new
    @user = User.find(params[:user_id])
    @havecomic = Havecomic.new
  end

  def create

      @user = current_user
    @havecomic = Havecomic.new(havecomic_params)

    if @havecomic.save
      @havecomic.user_id = @user.id
      @havecomic.save
      @blah = Mastercomic.where(id: @havecomic.mastercomic_id)
      @user.havelist << @blah[0].specialID
      @user.save


      redirect_to mastercomics_path, notice: "Your comic has been added!"
    else
      render :new
end
  end

  def show

    @havecomic = Havecomic.find(params[:id])
  end

  def edit
    @havecomic = Havecomic.find(params[:id])

  end

  def update
    @user = User.find(params[:user_id])

    @havecomic = Havecomic.find(params[:id])
    if @havecomic.save
      redirect_to root_path
    end
  end

  def destroy
    @havecomic = Havecomic.find(params[:id])
    @havecomic.destroy
  end

private

def havecomic_params
  params.require(:havecomic).permit(:user_id, :mastercomic_id)
end


end
