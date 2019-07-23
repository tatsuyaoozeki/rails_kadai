class MainsController < ApplicationController
  def index
  end

  def new
    @main = Main.new
  end

  def create
    Main.create(main_params)
    redirect_to new_main_path
  end

  private

  def main_params
    params.require(:main).permit(:content)
  end
end
