class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
    @movies = Movie.all
    @lists = List.all
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to list_path(@bookmark.list)
    else
      @movies = Movie.all
      @lists = List.all
      render :new
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment, :list_id)
  end
end
