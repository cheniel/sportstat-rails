class BasketballGamesController < ApplicationController
  before_action :set_basketball_game, only: [:show, :edit, :update, :destroy]
  layout 'api'

  def get_user_feed
    user = User.find(params[:user_id])
    @basketball_games = BasketballGame.where(user_id: user.following_ids)
  end

  # GET /basketball_games
  # GET /basketball_games.json
  def index
    unless params[:user_id].blank?
      @basketball_games = BasketballGame.where(user_id: params[:user_id])
    else
      @basketball_games = BasketballGame.all
    end
  end

  # GET /basketball_games/1
  # GET /basketball_games/1.json
  def show
  end

  # GET /basketball_games/new
  def new
    @basketball_game = BasketballGame.new
  end

  # GET /basketball_games/1/edit
  def edit
  end

  # POST /basketball_games
  # POST /basketball_games.json
  def create
    @basketball_game = BasketballGame.new(basketball_game_params)

    respond_to do |format|
      if @basketball_game.save
        format.html { redirect_to @basketball_game, notice: 'Basketball game was successfully created.' }
        format.json { render :show, status: :created, location: @basketball_game }
      else
        format.html { render :new }
        format.json { render json: @basketball_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basketball_games/1
  # PATCH/PUT /basketball_games/1.json
  def update
    respond_to do |format|
      if @basketball_game.update(basketball_game_params)
        format.html { redirect_to @basketball_game, notice: 'Basketball game was successfully updated.' }
        format.json { render :show, status: :ok, location: @basketball_game }
      else
        format.html { render :edit }
        format.json { render json: @basketball_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basketball_games/1
  # DELETE /basketball_games/1.json
  def destroy
    @basketball_game.destroy
    respond_to do |format|
      format.html { redirect_to basketball_games_url, notice: 'Basketball game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basketball_game
      @basketball_game = BasketballGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basketball_game_params
      params.require(:basketball_game).permit(:start_time, :end_time, :assists, :two_pointers, :three_pointers, :user_id, :notes, :lat, :long, :duration, :distance, :possessions, :shots_attempted)
    end
end
