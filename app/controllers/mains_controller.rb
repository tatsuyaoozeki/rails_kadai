class MainsController < ApplicationController
  def index
  end

  def new
    @main = Main.new
  end

  def create
    Main.create(content: params[:main][:content])
    redirect_to "new_main_path"
  end
end
