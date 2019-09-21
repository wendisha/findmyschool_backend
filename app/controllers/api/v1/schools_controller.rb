class Api::V1::SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :update, :destroy]

  # GET /schools
  def index
    @schools = School.all

    render json: @schools
  end

  # GET /schools/1
  def show
    render json: @school
  end

  # POST /schools

#Check if school already exists (If yes, bookmark school and dont create school. If not, create school and bookmark it)
  def create
    @school = School.find_by(name: params[:name])
    if @school 
      @bookmark = Bookmark.find_by(school_id: @school.id)
      if !@bookmark
        @bookmark = Bookmark.new(user_id: current_user.id, school_id: @school.id)
      end
    else 
      @school = School.new(school_params)
      if @school.save
        render json: @school, status: :created
      else
        render json: @school.errors, status: :unprocessable_entity
      end
  end
  end

  # PATCH/PUT /schools/1
  def update
    if @school.update(school_params)
      render json: @school
    else
      render json: @school.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schools/1
  def destroy
    @school.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def school_params
      params.require(:school).permit(:name, :city, :state, :phone, :url, :rating)
    end
end
