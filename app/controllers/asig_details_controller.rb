class AsigDetailsController < ApplicationController
  before_action :set_asig_detail, only: [:show, :edit, :update, :destroy]

  # GET /asig_details
  # GET /asig_details.json
  def index
    @asig_details = AsigDetail.all
  end

  # GET /asig_details/1
  # GET /asig_details/1.json
  def show
  end

  # GET /asig_details/new
  def new
    @asig_detail = AsigDetail.new
  end

  # GET /asig_details/1/edit
  def edit
  end

  # POST /asig_details
  # POST /asig_details.json
  def create
    @asig_detail = AsigDetail.new(asig_detail_params)

    respond_to do |format|
      if @asig_detail.save
        format.html { redirect_to @asig_detail, notice: 'Asig detail was successfully created.' }
        format.json { render :show, status: :created, location: @asig_detail }
      else
        format.html { render :new }
        format.json { render json: @asig_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asig_details/1
  # PATCH/PUT /asig_details/1.json
  def update
    respond_to do |format|
      if @asig_detail.update(asig_detail_params)
        format.html { redirect_to @asig_detail, notice: 'Asig detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @asig_detail }
      else
        format.html { render :edit }
        format.json { render json: @asig_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asig_details/1
  # DELETE /asig_details/1.json
  def destroy
    @asig_detail.destroy
    respond_to do |format|
      format.html { redirect_to asig_details_url, notice: 'Asig detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asig_detail
      @asig_detail = AsigDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asig_detail_params
      params.require(:asig_detail).permit(:quantity, :stock_id, :asig_stock_id)
    end
end
