class TodoitemsController < ApplicationController

  def index
    @todos = Todoitem.all
  end

end
