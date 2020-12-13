class NavigationController < ApplicationController
  def home
  end

  def games
  end

  def teams
    redirect_to root_path
  end

  def contact
  end

  def showUserTeam
    redirect_to team_showUserTeam_path
  end
  

end
