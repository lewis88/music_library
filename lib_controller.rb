require( 'Pry-byebug' )
require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative( 'models/album.rb' )
require_relative( 'models/artist.rb' )

get '/home' do
  erb( :home )
end

get '/artists' do
  # ARTIST INDEX
  @vary = 0
  @artists = Artist.all
  erb( :index )
end

get '/albums' do
  # ALBUM INDEX
  @vary = 1
  @albums = Album.all
  erb( :index )
end

get '/artists/:id' do
  # SHOW
  @vary = 0
  @artist = Artist.find( params[:id] )
  # binding.pry
  erb( :show )
end

get '/album/:id' do
  # SHOW
  @vary = 0
  @artist = Album.find( params[:id] )
  # binding.pry
  erb( :show )
end

# get '/library' do
#   # LIBRARY INDEX
#   @library =

post ''
