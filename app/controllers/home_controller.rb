class HomeController < ApplicationController
  def index
    redirect_to boards_path if user_signed_in?
  end

  def terms; end

  def privacy; end
end
