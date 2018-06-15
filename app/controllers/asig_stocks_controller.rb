class AsigStocksController < ApplicationController
  before_action :set_asig_stock, only: [:show, :edit, :update, :destroy]

  # GET /asig_stocks
  # GET /asig_stocks.json
  def index
    @asig_stocks = AsigStock.all
  end

  # GET /asig_stocks/1
  # GET /asig_stocks/1.json
  def show
  end

  # GET /asig_stocks/new
  def new
    @asig_stock = AsigStock.new
  end

  # GET /asig_stocks/1/edit
  def edit
  end

  # POST /asig_stocks
  # POST /asig_stocks.json
  def create
    @asig_stock = AsigStock.new(asig_stock_params)

    respond_to do |format|
      if @asig_stock.save
        format.html { redirect_to @asig_stock, notice: 'Asig stock was successfully created.' }
        format.json { render :show, status: :created, location: @asig_stock }
      else
        format.html { render :new }
        format.json { render json: @asig_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asig_stocks/1
  # PATCH/PUT /asig_stocks/1.json
  def update
    respond_to do |format|
      if @asig_stock.update(asig_stock_params)
        format.html { redirect_to @asig_stock, notice: 'Asig stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @asig_stock }
      else
        format.html { render :edit }
        format.json { render json: @asig_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asig_stocks/1
  # DELETE /asig_stocks/1.json
  def destroy
    @asig_stock.destroy
    respond_to do |format|
      format.html { redirect_to asig_stocks_url, notice: 'Asig stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asig_stock
      @asig_stock = AsigStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asig_stock_params
      params.require(:asig_stock).permit(:asig_date, :user_id)
    end
end
