class TasksController < ApplicationController
    def show
      @list = List.find(params[:id])
    end
  


    def create
        @list = List.find(params[:list_id])
        @task = @list.tasks.create(task_params)

    end

     
    def destroy
      @list = List.find(params[:list_id])
      @task = @list.tasks.find(params[:id])
      @task.destroy
      redirect_to list_path(@list)
    end

    private
        def task_params
          params.require(:task).permit(:name, :description, :priority, :status, :due, :completed)
        end
end
