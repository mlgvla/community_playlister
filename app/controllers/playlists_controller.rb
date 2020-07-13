class PlaylistsController < ApplicationController

    def index
        if params[:user_id]
            @user = User.find_by_id(params[:user_id])
            @playlists = @user.playlists.uniq
        else
            @playlists = Playlist.all
        end
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
        @playlist_tracks = PlaylistTrack.where(user_id: current_user.id, playlist_id: @playlist.id)
        if !@playlist
            flash[:error] = "Playlist not found."
            redirect_to playlists_path
        end          
	end

    def edit
        @playlist = Playlist.find_by_id(params[:id])
    end

    def update
        @playlist = Playlist.find_by_id(params[:id])
        if @playlist.update(playlist_params)
            redirect_to playlist_path(@playlist)   
        else
            render :edit 
        end   
    end

    def destroy
        Playlist.find(params[:id]).destroy
        redirect_to playlists_path
    end
    
    private

    def playlist_params
       params.require(:playlist).permit(:name, :description, :user_id, :public)
    end
end
