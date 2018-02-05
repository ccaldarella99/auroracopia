class EpisodesController < ApplicationController
  include EpisodesHelper
  
  def index
    @episodes = Episode.all
  end
  
  def show
    @episode = Episode.find(params[:id])
  end
  
  def new
    @episode = Episode.new
  end
  
  def edit
    @episode = Episode.find(params[:id])
  end
  
  def create
    @episode = Episode.new(episode_params)
    @episode.save
    redirect_to episode_path(@episode)
  end
  
  def update
    @episode = Episode.find(params[:id])
    @episode.update(episode_params)
    flash.notice = "Episode '#{@episode.title}' Updated!"
    redirect_to episode_path(@episode)
  end
  
  def destroy
    @episodes.destroy(params[:id])
    redirect_to episodes_path
  end
end
