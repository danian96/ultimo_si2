class TraningUsersController < ApplicationController
  before_action :set_traning_user, only: [:show, :edit, :update, :destroy]

  # GET /traning_users
  # GET /traning_users.json
  def index
    @traning_users = TraningUser.all
  end

  # GET /traning_users/1
  # GET /traning_users/1.json
  def show
  end

  # GET /traning_users/new
  def new
    @traning_user = TraningUser.new
  end

  # GET /traning_users/1/edit
  def edit
  end

  # POST /traning_users
  # POST /traning_users.json
  def create
    @traning_user = TraningUser.new(traning_user_params)

    respond_to do |format|
      if @traning_user.save
        format.html { redirect_to @traning_user, notice: 'Traning user was successfully created.' }
        format.json { render :show, status: :created, location: @traning_user }
      else
        format.html { render :new }
        format.json { render json: @traning_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traning_users/1
  # PATCH/PUT /traning_users/1.json
  def update
    respond_to do |format|
      if @traning_user.update(traning_user_params)
        format.html { redirect_to @traning_user, notice: 'Traning user was successfully updated.' }
        format.json { render :show, status: :ok, location: @traning_user }
      else
        format.html { render :edit }
        format.json { render json: @traning_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traning_users/1
  # DELETE /traning_users/1.json
  def destroy
    @traning_user.destroy
    respond_to do |format|
      format.html { redirect_to traning_users_url, notice: 'Traning user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traning_user
      @traning_user = TraningUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def traning_user_params
      params.require(:traning_user).permit(:status, :traning_id, :user_id)
    end
end
