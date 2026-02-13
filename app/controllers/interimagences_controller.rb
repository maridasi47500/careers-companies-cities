class InterimagencesController < ApplicationController
  before_action :set_interimagence, only: %i[ show edit update destroy ]

  # GET /interimagences or /interimagences.json
  def index
    @interimagences = Interimagence.all
  end

  # GET /interimagences/1 or /interimagences/1.json
  def show
  end

  # GET /interimagences/new
  def new
    @interimagence = Interimagence.new
  end

  # GET /interimagences/1/edit
  def edit
  end

  # POST /interimagences or /interimagences.json
  def create
    @interimagence = Interimagence.new(interimagence_params)

    respond_to do |format|
      if @interimagence.save
        format.html { redirect_to @interimagence, notice: "Interimagence was successfully created." }
        format.json { render :show, status: :created, location: @interimagence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @interimagence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interimagences/1 or /interimagences/1.json
  def update
    respond_to do |format|
      if @interimagence.update(interimagence_params)
        format.html { redirect_to @interimagence, notice: "Interimagence was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @interimagence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @interimagence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interimagences/1 or /interimagences/1.json
  def destroy
    @interimagence.destroy!

    respond_to do |format|
      format.html { redirect_to interimagences_path, notice: "Interimagence was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interimagence
      @interimagence = Interimagence.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def interimagence_params
      params.expect(interimagence: [ :name, :lat, :lon ])
    end
end
