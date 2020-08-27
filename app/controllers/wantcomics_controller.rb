class WantcomicsController < ApplicationController

  def index
    @wantcomics = Wantcomic.all
  end

  def new
    @user = User.find(params[:user_id])
    @wantcomic = Wantcomic.new
  end

  def create
    @user = current_user
    @wantcomic = Wantcomic.new(wantcomic_params)


    if @wantcomic.save
        @wantcomic.user_id = @user.id
        @wantcomic.save
        @blahh = Mastercomic.where(id: @wantcomic.mastercomic_id)
        @user.wantlist << @blahh[0].specialID
        @user.save

        redirect_to mastercomics_path, notice: "Your comic has been added!"
    else
      render :new
end
  end

  def goobar

  end


  def show

    @wantcomic = Wantcomic.find(params[:id])
  end

  def edit
    @wantcomic = Wantcomic.find(params[:id])

  end

  def update
    @user = User.find(params[:user_id])

    @wantcomic = Wantcomic.find(params[:id])
    if @wantcomic.save
      redirect_to root_path
    end
  end

  def destroy
    @wantcomic = Wantcomic.find(params[:id])
    @wantcomic.destroy
    flash[:success] = "Wantcomic deleted"
    redirect_to root_path
  end

private

def wantcomic_params
  params.require(:wantcomic).permit(:user_id, :mastercomic_id)
end


end
