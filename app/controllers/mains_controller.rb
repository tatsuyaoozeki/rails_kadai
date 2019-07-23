class MainsController < ApplicationController
  def index
  end

  def new
    @main = Main.new
  end
end
