class NavigationController < ApplicationController
  def home
    redirect_to root_path
  end

  def games
    redirect_to navigation_games_path
  end

  def teams
    redirect_to navigation_teams_path
  end

  def contact
    redirect_to navigation_contact_path
  end

  def showUserTeam
    redirect_to team_showUserTeam_path
  end
  

end
