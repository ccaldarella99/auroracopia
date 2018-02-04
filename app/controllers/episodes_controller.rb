class EpisodesController < ApplicationController
  
  def index
    @episodes = Episode.all
  end
  
  def show
    @episode = Episode.find(params[:id])
  end
  
  def new
  end
  
  def edit
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
  
  def episode_create
  end
end
