class MainsController < ApplicationController
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
    @main = Main.find(params[:id])
  end

  def edit
    @main = Main.find(params[:id])
  end

  def update
    @main = Main.find(params[:id])
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
end
