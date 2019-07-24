class MainsController < ApplicationController
  before_action :set_main, only: [:show, :edit, :update, :destroy]

  def index
    @mains = Main.all.reverse_order

  end

  def new
    @main = Main.new
  end

  def create
    @main = Main.create(main_params)
    if params[:back]
      render :new
    else
      if @main.save
        redirect_to mains_path, notice: "ツイートしました!"
      else
        render 'new'
      end
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

  def destroy
    @main.destroy
    redirect_to mains_path, notice: "ツイートを削除しました!"
  end

  def confirm
    @main = Main.new(main_params)
    render :new if @main.invalid?
  end

  private

  def main_params
    params.require(:main).permit(:content)
  end

  def set_main
    @main = Main.find(params[:id])
  end

end
