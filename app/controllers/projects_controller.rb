class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_filter :authorize, :except => [:index, :show]


  def index
    @projects = Project.all
    @categories = Category.all
  end


  def show
  end


  def new
    @project = Project.new
  end


  def edit
    @images = @project.images
  end


  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to project_images_path(@project), notice: t('views.project.create')
    else
      render action: 'new'
    end
  end


  def update
    if @project.update(project_params)
      redirect_to @project, notice: t('views.updated_ok')
    else
      render action: 'edit'
    end
  end


  def destroy
    @project.destroy
    redirect_to projects_url, notice: t('views.project.destroy')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.friendly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:title, :description, :body, :year, :tag_list, :slug, :cover_image, :category_ids => [])
    end
end
