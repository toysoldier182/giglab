class TodoItemsController < ApplicationController
  def index
    @todos = TodoItem.all
  end

  def update
    @todo = TodoItem.find_by_id(params[:id])
    @todo.update(todo_params)
    @todo.save
    respond_to do |format|
      format.js
    end
  end

  private

  def todo_params
    params.require(:todo_item).permit(:title, :completed)
  end
end
