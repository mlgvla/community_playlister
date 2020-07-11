class PlaylistsController < ApplicationController
    def index
        @playlists = Playlist.all
	end

    def new
        @playlist = Playlist.new
	end

    def create
        playlist = Playlist.new(playlist_params)
        playlist.user_id = current_user.id
        playlist.save
        redirect_to playlists_path(playlist)
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
    
    private

    def playlist_params
       params.require(:playlist).permit(:name, :description) 
    end
end
