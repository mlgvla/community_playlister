class PlaylistsController < ApplicationController

    before_action :redirect_if_not_logged_in
    # add this functionality for authorization
    before_action :set_playlist, only: [:show, :edit, :update]
    before_action :redirect_if_not_playlist_user, only: [:edit, :update] #should I add index, as well?


    def index
        if params[:user_id] && params[:user_id].to_i == current_user.id
            #direct authorization call
            @user = User.find_by_id(params[:user_id])
            @playlists = @user.playlists.uniq
        else
            @playlists = Playlist.all
        end
	end

    def new
        @playlist = Playlist.new
        @playlist.user_id = current_user.id
	end

    def create
        playlist = Playlist.new(playlist_params)
        # playlist.user_id = current_user.id
        playlist.save
        redirect_to playlists_path(playlist)
	end

    def show
        # @playlist = Playlist.find_by_id(params[:id])
        # #is this next line necessary?
        @playlist_tracks = PlaylistTrack.where(user_id: current_user.id, playlist_id: @playlist.id)
        # if !@playlist
        #     flash[:error] = "Playlist not found."
        #     redirect_to playlists_path
        # end          
	end

    def edit
        # @playlist = Playlist.find_by_id(params[:id])
    end

    def update
        # @playlist = Playlist.find_by_id(params[:id])
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

    def playlist_filter #add route
        binding.pry
        if params[:playlist][:public]
            @playlists = Playlist.public_playlists
        end

    end
    
    private

    def playlist_params
       params.require(:playlist).permit(:name, :description, :user_id, :public)
    end

    def set_playlist
        @playlist = Playlist.find_by_id(params[:id])
        if !@playlist
            flash[:error] = "Playlist not found"
            redirect_to playlists_path
        end
    end

    #must have set_playlist method to work?
    def redirect_if_not_playlist_user #switch to owner
        if params[:user_id].to_i != current_user.id
            flash[:error] = "Not authorized to access"
            redirect_to playlists_path #do I need?  Causing infinite loop
        end
    end
end
