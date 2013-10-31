class Admin::TagsController < Admin::AdminAreaController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  # GET /admin/tags
  def index
    @tags = Admin::Tag.all
  end

  # GET /admin/tags/1
  def show
  end

  # GET /admin/tags/new
  def new
    @tag = Admin::Tag.new
  end

  # GET /admin/tags/1/edit
  def edit
  end

  # POST /admin/tags
  def create
    @tag = Admin::Tag.new(tag_params)

    if @tag.save
      redirect_to @tag, notice: 'Tag was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /admin/tags/1
  def update
    if @tag.update(tag_params)
      redirect_to admin_tag_path, notice: 'Tag was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /admin/tags/1
  def destroy
    @tag.destroy
    redirect_to admin_tags_path, notice: 'Tag was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Admin::Tag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tag_params
      params[:admin_tag].permit(:name)
    end
end
