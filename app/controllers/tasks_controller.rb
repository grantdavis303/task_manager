class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.create!({
      title: params[:title],
      description: params[:description]
    })

    redirect_to tasks_path
  end

  def new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update({
      title: params[:title],
      description: params[:description]
    })

    @task.save
    redirect_to task_path(@task)
  end
  
  def destroy
    @deleted_task = Task.find(params[:id])
    @deleted_task.destroy

    redirect_to tasks_path
  end
end