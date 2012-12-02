class TasksController < ApplicationController
  def task
  end
  
  def create
    @progect = Progect.find(params[:progect_id])
    @task = @progect.tasks.create(params[:task])
    redirect_to progect_path(@progect)
  end
end
