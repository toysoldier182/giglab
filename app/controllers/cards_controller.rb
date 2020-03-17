class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
    @list = List.find(@card.list_id)
    @board = Board.find(@list.board_id)

  end

  def new
    @list = List.find(params[:list_id])
    @board = Board.find(@list.board_id)
    @card = Card.new
  end

  def create
    @list = List.find(params[:list_id])
    @board = Board.find(@list.board_id)
    @card = Card.new(card_params)
    @card.list_id = @list.id
    if @card.save
      redirect_to board_path(@board)
    else
      render 'new'
    end
  end

  private

  def card_params
    params.require(:card).permit(:name, :description)
  end
end
