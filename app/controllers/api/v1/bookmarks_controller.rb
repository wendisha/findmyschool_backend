class Api::V1::BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :update, :destroy]

  # GET /bookmarks
  def index
    if logged_in?
      @bookmarks = current_user.bookmarks
      render json: BookmarkSerializer.new(@bookmarks)
    else
      render json: {
        error: "You must be logged in to see bookmarks"
      }
    end
  end

  # GET /bookmarks/1
  def show
    render json: BookmarkSerializer.new(@bookmark)
  end

  # POST /bookmarks
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      render json: @bookmark, status: :created
    else
      render json: @bookmark.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookmarks/1
  def update
    if @bookmark.update(bookmark_params)
      render json: @bookmark
    else
      render json: @bookmark.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookmarks/1
  def destroy
    @bookmark.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bookmark_params
      params.require(:bookmark).permit(:user_id, :school_id)
    end
end
