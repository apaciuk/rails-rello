class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @boards = current_user.boards
    render json: @boards
  end
end
