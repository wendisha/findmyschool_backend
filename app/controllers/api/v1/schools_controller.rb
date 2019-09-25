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
    # school_id = 0
    if @school
      params[:user_id] = current_user.id
      params[:school_id] = @school.id
      @bookmark = Bookmark.find_by(school_id: params[:school_id])
      if @bookmark
        render json: {
          error: "You have already bookmarked this school!"
        }
      else
        @bookmark = Bookmark.create(:user_id => params[:user_id], :school_id => params[:school_id])
      end
    else
      @school = School.new(school_params)     
      if @school.save
        params[:user_id] = current_user.id
        params[:school_id] = @school.id
        @bookmark = Bookmark.create(:user_id => params[:user_id], :school_id => params[:school_id])
        render json: @school, status: :created
      else
        render json: @school.errors, status: :unprocessable_entity
      end
    end
  end


  ########

  # def create
  #   @school = School.find_by(name: params[:name])
  #   school_id = 0

  #   # FIRST: FIND or CREATE School & assign school_id
  #   if @school
  #     school_id = @school.id
  #   else
  #     @school = School.new(school_params)  

  #     if @school.save
  #       school_id = @school.id
  #     else
  #       render json: @school.errors, status: :unprocessable_entity
  #     end
  #   end

  #   # SECOND: Try to FIND Bookmark & CREATE if DOES NOT exit
  #   @bookmark = Bookmark.find(school_id)
  #   if @bookmark
  #     render json: {
  #       error: "You have already bookmarked this school!"
  #     }
  #   else
  #     @bookmark = Bookmark.create(:user_id => current_user.id, :school_id => school_id)
  #   end
  # end


  ########

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
