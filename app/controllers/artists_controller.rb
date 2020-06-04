class ArtistsController < ApplicationController

    get '/artists' do
        @artists = Artist.all
        erb :"artists/index"
    end
    
    get '/artists/new' do
        erb :"artists/new"
    end
    
    get '/artists/:id' do
        @artist = Artist.find(params[:id])
        erb :"artists/show"
    end

    post '/artists' do
        @artist = Artist.create(params[:artist])
        redirect "/artists/#{@artist.id}"
    end

end