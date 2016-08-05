class StaticpagesController < ApplicationController
  def index
  end

  def home
    flash[:success] = "Sucessful!"
  end
end
