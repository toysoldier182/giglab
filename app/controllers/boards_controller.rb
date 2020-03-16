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

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.user_id = current_user.id
    if @board.save
      redirect_to board_path(@board)
    else
    end
  end
end
