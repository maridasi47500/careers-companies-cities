class PubliqueinstitutionsController < ApplicationController
  before_action :set_publiqueinstitution, only: %i[ show edit update destroy ]

  # GET /publiqueinstitutions or /publiqueinstitutions.json
  def index
    @publiqueinstitutions = Publiqueinstitution.all
  end

  # GET /publiqueinstitutions/1 or /publiqueinstitutions/1.json
  def show
    @employer=Employer.new

    @employer.publiqueinstitutions=Publiqueinstitution.where(id: @publiqueinstitution.id)
  end

  # GET /publiqueinstitutions/new
  def new
    @publiqueinstitution = Publiqueinstitution.new
  end

  # GET /publiqueinstitutions/1/edit
  def edit
  end

  # POST /publiqueinstitutions or /publiqueinstitutions.json
  def create
    @publiqueinstitution = Publiqueinstitution.new(publiqueinstitution_params)

    respond_to do |format|
      if @publiqueinstitution.save
        format.html { redirect_to @publiqueinstitution, notice: "Publiqueinstitution was successfully created." }
        format.json { render :show, status: :created, location: @publiqueinstitution }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @publiqueinstitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publiqueinstitutions/1 or /publiqueinstitutions/1.json
  def update
    respond_to do |format|
      if @publiqueinstitution.update(publiqueinstitution_params)
        format.html { redirect_to @publiqueinstitution, notice: "Publiqueinstitution was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @publiqueinstitution }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @publiqueinstitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publiqueinstitutions/1 or /publiqueinstitutions/1.json
  def destroy
    @publiqueinstitution.destroy!

    respond_to do |format|
      format.html { redirect_to publiqueinstitutions_path, notice: "Publiqueinstitution was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publiqueinstitution
      @publiqueinstitution = Publiqueinstitution.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def publiqueinstitution_params
      params.expect(publiqueinstitution: [ :name, :lat, :lon ])
    end
end
