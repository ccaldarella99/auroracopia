module EpisodesHelper  
  def episode_params
    params.require(:episode).permit(:title, :body)
  end

end
