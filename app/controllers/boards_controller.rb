class BoardsController < ApplicationController
  before_action :authenticate_user!
  def index
    if user_signed_in?
      @boards = Board.includes(user_id: current_user.id)
    end
  end

  def show
    @board = Board.find(params[:id])
  end
end
