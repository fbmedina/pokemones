class PokeUsersController < ApplicationController
  before_action :set_poke_user, only: [:show, :edit, :update, :destroy, :lvlup]
  before_action :authenticate_user!
  # GET /poke_users
  # GET /poke_users.json
  def index
    @user = User.find(params[:user_id])
    @poke_users = @user.poke_users
  end

  # GET /poke_users/1
  # GET /poke_users/1.json
  def show
  end

  # GET /poke_users/new
  def new
    @poke_user = PokeUser.new
  end

  # GET /poke_users/1/edit
  def edit
  end

  # POST /poke_users
  # POST /poke_users.json
  def create
    @poke_user = PokeUser.new(poke_user_params)
    @poke_user.user = current_user

    respond_to do |format|
      if @poke_user.save
        format.html { redirect_to user_poke_users_path(current_user), notice: 'Poke user was successfully created.' }
        format.json { render :show, status: :created, location: @poke_user }
      else
        format.html { render :new }
        format.json { render json: @poke_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poke_users/1
  # PATCH/PUT /poke_users/1.json
  def update
    respond_to do |format|
      if @poke_user.update(poke_user_params)
        format.html { redirect_to @poke_user, notice: 'Poke user was successfully updated.' }
        format.json { render :show, status: :ok, location: @poke_user }
      else
        format.html { render :edit }
        format.json { render json: @poke_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poke_users/1
  # DELETE /poke_users/1.json
  def destroy
    @poke_user.destroy
    respond_to do |format|
      format.html { redirect_to poke_users_url, notice: 'Poke user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def lvlup
    @poke_user.level += 1
    @poke_user.save
    redirect_to user_poke_users_path(current_user)
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poke_user
      @poke_user = PokeUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poke_user_params
      params.require(:poke_user).permit(:level, :pokemon_id)
    end
end
