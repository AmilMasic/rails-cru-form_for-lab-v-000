class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
   @genre = Genre.new(params.require(:genre).permit(:name, :bio))
   @genre.save
   redirect_to genre_path(@genre)
 end

 def edit
   @genre = Genre.find(params[:id])
 end

 def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name, :bio))
    redirect_to genre_path(@genre)
  end
end
