class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
  end

  # The engine for using API requests, implementing RapidAPI as platform to parse corresponding URL including keys input,
  # into JSON type, if no response, return nil.
  def request_api(url)
    response = Excon.get(
      url,
      headers: {
        'X-RapidAPI-Host' => URI.parse(url).host,
        # 'X-RapidAPI-Key' => ENV.fetch('RAPIDAPI_API_KEY')
        'X-RapidAPI-Key' => '81f17623camshd2b99a09f5ec7b9p1cf6aejsn282365a0a05e'
        # KEY is: 81f17623camshd2b99a09f5ec7b9p1cf6aejsn282365a0a05e
      }
    )

    return nil if response.status != 200

    JSON.parse(response.body)
  end

  # Controller to find a team by its apiID for RapidAPI
  def find_team_by_ID(apiId)
    request_api(
      "https://api-nba-v1.p.rapidapi.com/teams/teamId/#{apiId}"
    )
  end

  # Controller to set Current User to subscribe to a team
  def setUserTeam
    current_user.team_ids = params[:currentTeamId]
  end
  # Controller to set Current User to cancel subscription to a team
  def cancelUserTeam
    current_user.team_ids = nil
  end

  # Controller to show Current User's team subscription
  def showUserTeam
    # If user has a team subscribed
    if current_user.teams.first != nil
      # These variables will correspond to each column value of subscribed team
      @userTeamApiId = current_user.teams.first.apiId
      teams = find_team_by_ID(@userTeamApiId)
      @team = teams["api"]["teams"].first
    end
    # This variable will be the current user subscribed team
    @userTeams = current_user.teams
  end

  
  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)
    @team.user_ids = current_user.id

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      params.require(:team).permit(:teamName, :apiId)
    end
end
