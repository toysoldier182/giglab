class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy  ]
  def index
    @lists = List.all
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
      redirect_to board_lists_path
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
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
