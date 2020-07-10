class User < ApplicationRecord
    has_secure_password

    has_many :playlist_tracks
    has_many :playlists
    has_many :playlists, through: :playlist_tracks
    has_many :comments

    validates :email, presence: true
    validates :email, uniqueness: true

    
    def self.create_by_github_omniauth(auth)
      self.find_or_create_by(email: auth[:info][:email]) do |u|
        u.first_name = auth[:info][:name].split[0]
        u.last_name = auth[:info][:name].split[1]
        u.password = SecureRandom.hex 
      end
    end
    

    # def self.create_by_google_omniauth(auth)
    #   self.find_or_create_by(username: auth[:info][:email]) do |u|
    #     u.password = SecureRandom.hex
    #   end
    # end
  
    

end
