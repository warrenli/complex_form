class Jquery::ProjectsController < ApplicationController
  layout 'jquery'

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    3.times { @project.tasks.build }
  end

  def edit
    @project = Project.find(params[:id])
    @project.tasks.build
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = 'Project was successfully created.'
      redirect_to jquery_projects_path
    else
      render :action => "new"
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = 'Project was successfully updated.'
      redirect_to jquery_project_path(@project)
    else
      render :action => "edit"
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to(jquery_projects_path)
  end
end
