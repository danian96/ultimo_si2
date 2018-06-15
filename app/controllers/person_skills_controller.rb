class PersonSkillsController < ApplicationController
  before_action :set_person_skill, only: [:show, :edit, :update, :destroy]

  # GET /person_skills
  # GET /person_skills.json
  def index
    @person_skills = PersonSkill.all
  end

  # GET /person_skills/1
  # GET /person_skills/1.json
  def show
  end

  # GET /person_skills/new
  def new
    @person_skill = PersonSkill.new
  end

  # GET /person_skills/1/edit
  def edit
  end

  # POST /person_skills
  # POST /person_skills.json
  def create
    @person_skill = PersonSkill.new(person_skill_params)

    respond_to do |format|
      if @person_skill.save
        format.html { redirect_to @person_skill, notice: 'Person skill was successfully created.' }
        format.json { render :show, status: :created, location: @person_skill }
      else
        format.html { render :new }
        format.json { render json: @person_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_skills/1
  # PATCH/PUT /person_skills/1.json
  def update
    respond_to do |format|
      if @person_skill.update(person_skill_params)
        format.html { redirect_to @person_skill, notice: 'Person skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_skill }
      else
        format.html { render :edit }
        format.json { render json: @person_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_skills/1
  # DELETE /person_skills/1.json
  def destroy
    @person_skill.destroy
    respond_to do |format|
      format.html { redirect_to person_skills_url, notice: 'Person skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_skill
      @person_skill = PersonSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_skill_params
      params.require(:person_skill).permit(:nivel, :person, :skill_id)
    end
end
