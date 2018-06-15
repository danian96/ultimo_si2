class DetalleAplicacionsController < ApplicationController
  before_action :set_detalle_aplicacion, only: [:show, :edit, :update, :destroy]

  # GET /detalle_aplicacions
  # GET /detalle_aplicacions.json
  def index
    @detalle_aplicacions = DetalleAplicacion.all
  end

  # GET /detalle_aplicacions/1
  # GET /detalle_aplicacions/1.json
  def show
  end

  # GET /detalle_aplicacions/new
  def new
    @detalle_aplicacion = DetalleAplicacion.new
  end

  # GET /detalle_aplicacions/1/edit
  def edit
  end

  # POST /detalle_aplicacions
  # POST /detalle_aplicacions.json
  def create
    @detalle_aplicacion = DetalleAplicacion.new(detalle_aplicacion_params)

    respond_to do |format|
      if @detalle_aplicacion.save
        format.html { redirect_to @detalle_aplicacion, notice: 'Detalle aplicacion was successfully created.' }
        format.json { render :show, status: :created, location: @detalle_aplicacion }
      else
        format.html { render :new }
        format.json { render json: @detalle_aplicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_aplicacions/1
  # PATCH/PUT /detalle_aplicacions/1.json
  def update
    respond_to do |format|
      if @detalle_aplicacion.update(detalle_aplicacion_params)
        format.html { redirect_to @detalle_aplicacion, notice: 'Detalle aplicacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle_aplicacion }
      else
        format.html { render :edit }
        format.json { render json: @detalle_aplicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_aplicacions/1
  # DELETE /detalle_aplicacions/1.json
  def destroy
    @detalle_aplicacion.destroy
    respond_to do |format|
      format.html { redirect_to detalle_aplicacions_url, notice: 'Detalle aplicacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_aplicacion
      @detalle_aplicacion = DetalleAplicacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_aplicacion_params
      params.require(:detalle_aplicacion).permit(:estado, :fecha, :people_id, :evaluacion_psicologica_id, :evaluacion_tecnica_id)
    end
end
