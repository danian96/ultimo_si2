class EvaluacionTecnicasController < ApplicationController
  before_action :set_evaluacion_tecnica, only: [:show, :edit, :update, :destroy]

  # GET /evaluacion_tecnicas
  # GET /evaluacion_tecnicas.json
  def index
    @evaluacion_tecnicas = EvaluacionTecnica.all
  end

  # GET /evaluacion_tecnicas/1
  # GET /evaluacion_tecnicas/1.json
  def show
  end

  # GET /evaluacion_tecnicas/new
  def new
    @evaluacion_tecnica = EvaluacionTecnica.new
  end

  # GET /evaluacion_tecnicas/1/edit
  def edit
  end

  # POST /evaluacion_tecnicas
  # POST /evaluacion_tecnicas.json
  def create
    @evaluacion_tecnica = EvaluacionTecnica.new(evaluacion_tecnica_params)

    respond_to do |format|
      if @evaluacion_tecnica.save
        format.html { redirect_to @evaluacion_tecnica, notice: 'Evaluacion tecnica was successfully created.' }
        format.json { render :show, status: :created, location: @evaluacion_tecnica }
      else
        format.html { render :new }
        format.json { render json: @evaluacion_tecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluacion_tecnicas/1
  # PATCH/PUT /evaluacion_tecnicas/1.json
  def update
    respond_to do |format|
      if @evaluacion_tecnica.update(evaluacion_tecnica_params)
        format.html { redirect_to @evaluacion_tecnica, notice: 'Evaluacion tecnica was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluacion_tecnica }
      else
        format.html { render :edit }
        format.json { render json: @evaluacion_tecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluacion_tecnicas/1
  # DELETE /evaluacion_tecnicas/1.json
  def destroy
    @evaluacion_tecnica.destroy
    respond_to do |format|
      format.html { redirect_to evaluacion_tecnicas_url, notice: 'Evaluacion tecnica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluacion_tecnica
      @evaluacion_tecnica = EvaluacionTecnica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluacion_tecnica_params
      params.require(:evaluacion_tecnica).permit(:observacion, :calificacion)
    end
end
