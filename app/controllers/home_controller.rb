class HomeController < ApplicationController
  def index
    redirect_to edit_user_registration_path if user_signed_in?
  end

  def terms; end

  def privacy; end
end
