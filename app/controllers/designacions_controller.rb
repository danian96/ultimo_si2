class DesignacionsController < ApplicationController
  before_action :set_designacion, only: [:show, :edit, :update, :destroy]

  # GET /designacions
  # GET /designacions.json
  def index
    @designacions = Designacion.all
  end

  # GET /designacions/1
  # GET /designacions/1.json
  def show
  end

  # GET /designacions/new
  def new
    @designacion = Designacion.new
  end

  # GET /designacions/1/edit
  def edit
  end

  # POST /designacions
  # POST /designacions.json
  def create
    @designacion = Designacion.new(designacion_params)

    respond_to do |format|
      if @designacion.save
        format.html { redirect_to @designacion, notice: 'Designacion was successfully created.' }
        format.json { render :show, status: :created, location: @designacion }
      else
        format.html { render :new }
        format.json { render json: @designacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designacions/1
  # PATCH/PUT /designacions/1.json
  def update
    respond_to do |format|
      if @designacion.update(designacion_params)
        format.html { redirect_to @designacion, notice: 'Designacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @designacion }
      else
        format.html { render :edit }
        format.json { render json: @designacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designacions/1
  # DELETE /designacions/1.json
  def destroy
    @designacion.destroy
    respond_to do |format|
      format.html { redirect_to designacions_url, notice: 'Designacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_designacion
      @designacion = Designacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def designacion_params
      params.require(:designacion).permit(:name, :user_id, :departamento_id)
    end
end
