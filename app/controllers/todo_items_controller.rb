class TodoItemsController < ApplicationController
  def index
    @todos = TodoItem.all
  end
end
