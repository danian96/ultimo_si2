class GradeAcademicsController < ApplicationController
  before_action :set_grade_academic, only: [:show, :edit, :update, :destroy]

  # GET /grade_academics
  # GET /grade_academics.json
  def index
    @grade_academics = GradeAcademic.all
  end

  # GET /grade_academics/1
  # GET /grade_academics/1.json
  def show
  end

  # GET /grade_academics/new
  def new
    @grade_academic = GradeAcademic.new
  end

  # GET /grade_academics/1/edit
  def edit
  end

  # POST /grade_academics
  # POST /grade_academics.json
  def create
    @grade_academic = GradeAcademic.new(grade_academic_params)

    respond_to do |format|
      if @grade_academic.save
        format.html { redirect_to @grade_academic, notice: 'Grade academic was successfully created.' }
        format.json { render :show, status: :created, location: @grade_academic }
      else
        format.html { render :new }
        format.json { render json: @grade_academic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grade_academics/1
  # PATCH/PUT /grade_academics/1.json
  def update
    respond_to do |format|
      if @grade_academic.update(grade_academic_params)
        format.html { redirect_to @grade_academic, notice: 'Grade academic was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade_academic }
      else
        format.html { render :edit }
        format.json { render json: @grade_academic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grade_academics/1
  # DELETE /grade_academics/1.json
  def destroy
    @grade_academic.destroy
    respond_to do |format|
      format.html { redirect_to grade_academics_url, notice: 'Grade academic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_academic
      @grade_academic = GradeAcademic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_academic_params
      params.require(:grade_academic).permit(:name, :institution)
    end
end
