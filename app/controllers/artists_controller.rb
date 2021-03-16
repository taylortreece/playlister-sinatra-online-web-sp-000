class ArtistsController < ApplicationController

    get '/artists' do
        @artists=Artist.all
        erb :'/artists/index'
    end

    get '/artists/:slug' do
        artist_name=Artist.reverse_slug_name(params[:slug])
        @artist=Artist.find_by(name: artist_name)

        erb :'/artists/show'
    end

end
