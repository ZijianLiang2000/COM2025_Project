class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # Pagination implementation to specify Game objects per page
  GAMES_PER_PAGE = 10

  def index
    # Specify page and game varialbe to be limited in a scope of 10 games per page
    @page = params.fetch(:page, 0).to_i
    @games = Game.offset(@page * GAMES_PER_PAGE).limit(GAMES_PER_PAGE)
  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # Shows the list of games linked to corresponding Team object (by its ID)
  def showTeamGames
    @teamGames = Team.find(params[:teamIdToFindGames]).games
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json {flash[:notice] = "Game was successfully destroyed."}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:homeTeamName, :awayTeamName, :gameWinnerId, :homeTeamScore, :awayTeamScore, :gameDate)
    end
    
end
