class BoardsController < ApplicationController
  def index
    @boards = Board.includes(user_id: current_user.id)
  end

  def show
    @board = Board.find(params[:id])
  end
end
