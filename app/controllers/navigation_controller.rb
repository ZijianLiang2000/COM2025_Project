class NavigationController < ApplicationController
  # If navigation#home selected, redirect back to home#home
  def home
    redirect_to root_path
  end
  # If navigation#game selected, redirect back to game#index
  def games
    redirect_to navigation_games_path
  end
  # If navigation#teams selected, redirect back to teams#index
  def teams
    redirect_to navigation_teams_path
  end
  # If navigation#contact selected, redirect back to contact#contact
  def contact
    redirect_to navigation_contact_path
  end
  # If navigation#showUserTeam selected ('Subscription' label), redirect back to team#showUserTeam
  def showUserTeam
    redirect_to team_showUserTeam_path
  end
  

end
