class PersonalizationsController < ApplicationController
  before_action :set_personalization, only: [:show, :edit, :update, :destroy]

  # GET /personalizations
  # GET /personalizations.json
  def index
    @personalizations = Personalization.all
  end

  # GET /personalizations/1
  # GET /personalizations/1.json
  def show
  end

  # GET /personalizations/new
  def new
    @personalization = Personalization.new
  end

  # GET /personalizations/1/edit
  def edit
  end

  # POST /personalizations
  # POST /personalizations.json
  def create
    @personalization = Personalization.new(personalization_params)

    respond_to do |format|
      if @personalization.save
        format.html { redirect_to @personalization, notice: 'Personalization was successfully created.' }
        format.json { render :show, status: :created, location: @personalization }
      else
        format.html { render :new }
        format.json { render json: @personalization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personalizations/1
  # PATCH/PUT /personalizations/1.json
  def update
    respond_to do |format|
      if @personalization.update(personalization_params)
        format.html { redirect_to @personalization, notice: 'Personalization was successfully updated.' }
        format.json { render :show, status: :ok, location: @personalization }
      else
        format.html { render :edit }
        format.json { render json: @personalization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personalizations/1
  # DELETE /personalizations/1.json
  def destroy
    @personalization.destroy
    respond_to do |format|
      format.html { redirect_to personalizations_url, notice: 'Personalization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personalization
      @personalization = Personalization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personalization_params
      params.require(:personalization).permit(:name, :user_id)
    end
end
