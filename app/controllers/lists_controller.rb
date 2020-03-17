class ListsController < ApplicationController
  before_action :find_list, only: [ :show, :edit, :update, :destroy ]

  def index
    return nil if List.all.empty?
    return @lists = List.includes(:board)
  end

  def show; end

  def new
    @board = Board.find(params[:board_id])
    @list = List.new
  end

  def create
    @board = Board.find(params[:board_id])
    @list = List.new(list_params)
    @list.board_id = @board.id
    if @list.save
      redirect_to board_path(@board)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    @list.update(list_params)
    redirect_to
  end

  def destroy
    @list.destroy
    redirect_to board_path(@list.board_id)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
