class PlaylistsController < ApplicationController
    def index
        @playlists = Playlist.all
	end

	def new
	end

	def create
	end

    def show
        @playlist = Playlist.find_by_id(params[:id])
        if !@playlist
            flash[:error] = "Playlist not found."
            redirect_to playlists_path
        end          
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
