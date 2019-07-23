class MainsController < ApplicationController
  before_action :set_main, only: [:show, :edit, :update]

  def index
    @mains = Main.all

  end

  def new
    @main = Main.new
  end

  def create
    @main = Main.create(main_params)
    if @main.save
      redirect_to new_main_path, notice: "ツイートしました!"
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update
    if @main.update(main_params)
      redirect_to mains_path, notice: "ツイートを編集しました!"
    else
      render 'new'
    end
  end

  private

  def main_params
    params.require(:main).permit(:content)
  end

  def set_main
    @main = Main.find(params[:id])
end
