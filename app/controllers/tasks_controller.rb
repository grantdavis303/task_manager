class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    task = Task.create!({
      title: params[:title],
      description: params[:description]
    })

    redirect_to tasks_path
  end
end