class SongsController < ApplicationController

    get '/songs' do 
        @songs=Song.all
        erb :'/songs/index'
    end

    get '/songs/new' do
        @artists=Artist.all
        @genres=Genre.all
        erb :'/songs/new'
    end

    get '/songs/:slug' do
        song_name=Song.reverse_slug_name(params[:slug])
        @song=Song.find_by(name: song_name)
        
        erb :'/songs/show'
    end

    post '/songs' do
        @song=Song.create(params[:song])
        binding.pry
    
        redirect "/song/#{@song.slug}"
    end



end