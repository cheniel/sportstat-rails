class UserRelationshipsController < ApplicationController
  before_action :set_user_relationship, only: [:show, :edit, :update, :destroy]
  layout 'api'

  def get_relationship
    @relationship = UserRelationship.find_by(follower_id: params[:user_id], following_id: params[:following_id])
  end

  # GET /user_relationships
  # GET /user_relationships.json
  def index
    unless params[:user_id].blank?
      @user_relationships = UserRelationship.where(follower_id: params[:user_id])
    else
      @user_relationships = UserRelationship.all
    end
  end

  # GET /user_relationships/1
  # GET /user_relationships/1.json
  def show
  end

  # GET /user_relationships/new
  def new
    @user_relationship = UserRelationship.new
  end

  # GET /user_relationships/1/edit
  def edit
  end

  # POST /user_relationships
  # POST /user_relationships.json
  def create
    @user_relationship = UserRelationship.new(user_relationship_params)

    respond_to do |format|
      if @user_relationship.save
        format.html { redirect_to @user_relationship, notice: 'User relationship was successfully created.' }
        format.json { render :show, status: :created, location: @user_relationship }
      else
        format.html { render :new }
        format.json { render json: @user_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_relationships/1
  # PATCH/PUT /user_relationships/1.json
  def update
    respond_to do |format|
      if @user_relationship.update(user_relationship_params)
        format.html { redirect_to @user_relationship, notice: 'User relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_relationship }
      else
        format.html { render :edit }
        format.json { render json: @user_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_relationships/1
  # DELETE /user_relationships/1.json
  def destroy
    @user_relationship.destroy
    respond_to do |format|
      format.html { redirect_to user_relationships_url, notice: 'User relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_relationship
      @user_relationship = UserRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_relationship_params
      params.require(:user_relationship).permit(:follower_id, :following_id)
    end
end
