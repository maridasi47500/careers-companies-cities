class PlateformedemploisController < ApplicationController
  before_action :set_plateformedemploi, only: %i[ show edit update destroy ]

  # GET /plateformedemplois or /plateformedemplois.json
  def index
    @plateformedemplois = Plateformedemploi.all
  end

  # GET /plateformedemplois/1 or /plateformedemplois/1.json
  def show
  end

  # GET /plateformedemplois/new
  def new
    @plateformedemploi = Plateformedemploi.new
  end

  # GET /plateformedemplois/1/edit
  def edit
  end

  # POST /plateformedemplois or /plateformedemplois.json
  def create
    @plateformedemploi = Plateformedemploi.new(plateformedemploi_params)

    respond_to do |format|
      if @plateformedemploi.save
        format.html { redirect_to @plateformedemploi, notice: "Plateformedemploi was successfully created." }
        format.json { render :show, status: :created, location: @plateformedemploi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plateformedemploi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plateformedemplois/1 or /plateformedemplois/1.json
  def update
    respond_to do |format|
      if @plateformedemploi.update(plateformedemploi_params)
        format.html { redirect_to @plateformedemploi, notice: "Plateformedemploi was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @plateformedemploi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plateformedemploi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plateformedemplois/1 or /plateformedemplois/1.json
  def destroy
    @plateformedemploi.destroy!

    respond_to do |format|
      format.html { redirect_to plateformedemplois_path, notice: "Plateformedemploi was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plateformedemploi
      @plateformedemploi = Plateformedemploi.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def plateformedemploi_params
      params.expect(plateformedemploi: [ :name, :lat, :lon ])
    end
end
