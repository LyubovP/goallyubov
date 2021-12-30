class TasksController < ApplicationController
  before_action :find_task, only: [:edit, :update, :destroy ]

  def index
    @q = Task.ransack(params[:q])
    @tasks = @q.result(distinct: true)
  end

  def show
    @task = current_user.tasks.find(params[:id])
  end

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      redirect_to root_path
    else
      flash[:error] = @task.errors.full_messages[0]
      render :new
    end
  end

  def edit; end

  def update
    if @task.update(task_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to root_path
  end
  
  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :user_id, :priority, :due_date, :completion_status)
  end
end
