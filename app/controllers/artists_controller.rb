class ArtistsController < ApplicationController

def index
  @artists = Artist.all   
end

def show 
   @artist = Artist.find(params[:id]) 
end 

def new 
    @artist = Artist.new 
end 

def create 
    @artist =  Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
end 

def edit
    @artist = Artist.find(params[:id])
end 

def update 
    @artist = Artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
 end     

end


#Build RESTful actions for index, show, new, create, edit, update
# 2. Use form_for for all forms (no need to share forms or partials)
# 3. Correctly redirect when needed
# 4. Interlink between pages using route helpers