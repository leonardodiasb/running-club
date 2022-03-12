class TracksController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @tracks = @user.tracks.order(created_at: :desc)
  end

  def show
    @user = current_user
    @track = Track.find(params[:id])
    @tm = @track.timestp.last - @track.timestp[0]
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
    params.require(:track).permit(:extra, { :latitude => [] }, { :longitude => [] }, { :timestp => [] }, :time)
  end
end
