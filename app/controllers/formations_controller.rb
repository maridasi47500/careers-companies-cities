class FormationsController < ApplicationController
  before_action :set_formation, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /formations or /formations.json
  def index
    @formations = Formation.all
  end

  # GET /formations/1 or /formations/1.json
  def show
  end

  # GET /formations/new
  def new
    @formation = Formation.new(user_id: current_user.id)
  end

  # GET /formations/1/edit
  def edit
  end

  # POST /formations or /formations.json
  def create
    @formation = Formation.new(formation_params)

    respond_to do |format|
      if @formation.save
        format.html { redirect_to @formation, notice: "Formation was successfully created." }
        format.json { render :show, status: :created, location: @formation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @formation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formations/1 or /formations/1.json
  def update
    respond_to do |format|
      if @formation.update(formation_params)
        format.html { redirect_to @formation, notice: "Formation was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @formation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @formation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formations/1 or /formations/1.json
  def destroy
    @formation.destroy!

    respond_to do |format|
      format.html { redirect_to formations_path, notice: "Formation was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formation
      @formation = Formation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def formation_params
      params.expect(formation: [ :user_id, :ecole, :diplome, :lieu, :debut, :fin ])
    end
end
