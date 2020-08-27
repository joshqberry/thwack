class MastercomicsController < ApplicationController

  def index
    @mastercomics = Mastercomic.all

    @mastercomic = Mastercomic.new

    @wantcomic = Wantcomic.new

    @havecomic = Havecomic.new

    @user = current_user

  end

  def new
    @mastercomic = Mastercomic.new
  end

  def show
    @mastercomic = Mastercomic.find(params[:id])
  end

  def create

    @mastercomic = Mastercomic.new(mastercomic_params)
      if @mastercomic.save

        # This flash alert is not working; not dealing with it but will leave it here for now
        flash[:success] = "Comic entry has been created."
        redirect_to welcome_path
      end


  end

  def edit
    @mastercomic = Mastercomic.find(params[:id])
  end

  def destroy
    Mastercomic.find(params[:id]).destroy
      flash[:success] = "Mastercomic deleted"
      redirect_to root_path
  end

    private

    def mastercomic_params
      params.require(:mastercomic).permit(:title, :issuenumber, :publisher, :category,
      :specialID, :imagesource)
    end



end
