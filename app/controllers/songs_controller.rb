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
            @song.artist=Artist.find_or_create_by(name: params["artist"]["name"])
            @song.genre_ids=params[:genres]
            @song.save
        redirect "/songs/#{@song.slug}"
    end



end

# <% @artists.each do |artist| %><br>
# <input type='radio' name='song[artist]' id='artist' value='<%=artist.name%>'>
# <label for='artist'><%=artist.name%></label>
# <%end%><br><br>