class ProjectsController < ApplicationController

  def index
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[project_params])

    if @project.save
      redirect_to @project,
      notice: "Project has been created."
    else
      # nothing yet
    end
  end

  def show
    @project = Project.find(params[:id])
  end
  
  private

    def project_params
      params.require(:project).permit(:name, :description)
    end

end
