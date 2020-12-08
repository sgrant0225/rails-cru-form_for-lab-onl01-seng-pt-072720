class SongsController < ApplicationController

   def index
    @songs = Song.all
   end
   
   def show 
    @song = Song.find(params[:id])
   end 
   
   def new 
    @song = Song.new
   end
   
   def create 
     @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
     redirect_to song_path(@song)
   end 
   
   def edit 
    @song = Song.find(params[:id]) 
   end
   
   def update 
    @song = Song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
     redirect_to song_path(@song)
   end  

end



#Build RESTful actions for index, show, new, create, edit, update
# 2. Use form_for for all forms (no need to share forms or partials)
# 3. Correctly redirect when needed
# 4. Interlink between pages using route helpers