class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update ]
  before_action :require_authentication, only: [:show, :edit, :update]


  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    # @project = project.new(project_params)
    # if @project.save
    #   redirect_to @project
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Project was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private 

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.expect(project: [ :github_repo, :kitted_guide, :proposed_tier, :proposed_tier_explanation, :group_project ])
  end


end
