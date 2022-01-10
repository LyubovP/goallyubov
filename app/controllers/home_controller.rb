class HomeController < ApplicationController
  def index
    @q = Task.search
    @tasks = current_user.tasks.all
    @tasks = Task.order(:title)
  end
end
