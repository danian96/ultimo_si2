class EvaluacionPsicologicasController < ApplicationController
  before_action :set_evaluacion_psicologica, only: [:show, :edit, :update, :destroy]

  # GET /evaluacion_psicologicas
  # GET /evaluacion_psicologicas.json
  def index
    @evaluacion_psicologicas = EvaluacionPsicologica.all
  end

  # GET /evaluacion_psicologicas/1
  # GET /evaluacion_psicologicas/1.json
  def show
  end

  # GET /evaluacion_psicologicas/new
  def new
    @evaluacion_psicologica = EvaluacionPsicologica.new
  end

  # GET /evaluacion_psicologicas/1/edit
  def edit
  end

  # POST /evaluacion_psicologicas
  # POST /evaluacion_psicologicas.json
  def create
    @evaluacion_psicologica = EvaluacionPsicologica.new(evaluacion_psicologica_params)

    respond_to do |format|
      if @evaluacion_psicologica.save
        format.html { redirect_to @evaluacion_psicologica, notice: 'Evaluacion psicologica was successfully created.' }
        format.json { render :show, status: :created, location: @evaluacion_psicologica }
      else
        format.html { render :new }
        format.json { render json: @evaluacion_psicologica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluacion_psicologicas/1
  # PATCH/PUT /evaluacion_psicologicas/1.json
  def update
    respond_to do |format|
      if @evaluacion_psicologica.update(evaluacion_psicologica_params)
        format.html { redirect_to @evaluacion_psicologica, notice: 'Evaluacion psicologica was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluacion_psicologica }
      else
        format.html { render :edit }
        format.json { render json: @evaluacion_psicologica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluacion_psicologicas/1
  # DELETE /evaluacion_psicologicas/1.json
  def destroy
    @evaluacion_psicologica.destroy
    respond_to do |format|
      format.html { redirect_to evaluacion_psicologicas_url, notice: 'Evaluacion psicologica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluacion_psicologica
      @evaluacion_psicologica = EvaluacionPsicologica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluacion_psicologica_params
      params.require(:evaluacion_psicologica).permit(:observaciones, :recomendaciones)
    end
end
