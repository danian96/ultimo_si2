class PersonProfessionsController < ApplicationController
  before_action :set_person_profession, only: [:show, :edit, :update, :destroy]

  # GET /person_professions
  # GET /person_professions.json
  def index
    @person_professions = PersonProfession.all
  end

  # GET /person_professions/1
  # GET /person_professions/1.json
  def show
  end

  # GET /person_professions/new
  def new
    @person_profession = PersonProfession.new
  end

  # GET /person_professions/1/edit
  def edit
  end

  # POST /person_professions
  # POST /person_professions.json
  def create
    @person_profession = PersonProfession.new(person_profession_params)

    respond_to do |format|
      if @person_profession.save
        format.html { redirect_to @person_profession, notice: 'Person profession was successfully created.' }
        format.json { render :show, status: :created, location: @person_profession }
      else
        format.html { render :new }
        format.json { render json: @person_profession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_professions/1
  # PATCH/PUT /person_professions/1.json
  def update
    respond_to do |format|
      if @person_profession.update(person_profession_params)
        format.html { redirect_to @person_profession, notice: 'Person profession was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_profession }
      else
        format.html { render :edit }
        format.json { render json: @person_profession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_professions/1
  # DELETE /person_professions/1.json
  def destroy
    @person_profession.destroy
    respond_to do |format|
      format.html { redirect_to person_professions_url, notice: 'Person profession was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_profession
      @person_profession = PersonProfession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_profession_params
      params.require(:person_profession).permit(:person_id, :profession_id, :grade_academic_id)
    end
end
