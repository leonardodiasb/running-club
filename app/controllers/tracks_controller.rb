class TracksController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
  end

  def new
    @user = current_user
    @track = Track.new
  end

  def create
    user = current_user
    track = user.tracks.new(track_params)

    if track.save
      flash[:notice] = 'The track was saved successfully.'
      redirect_to root_url
    else
      flash[:error] = 'Track not created'
      render 'new'
    end
  end

  private
  
  def track_params
    params.require(:track).permit(:extra, { :latitude => [] }, { :longitude => [] }, :time)
  end
end
