class JobeventsController < ApplicationController
  before_action :set_jobevent, only: %i[ show edit update destroy ]

  # GET /jobevents or /jobevents.json
  def index
    @jobevents = Jobevent.all
  end

  # GET /jobevents/1 or /jobevents/1.json
  def show
  end

  # GET /jobevents/new
  def new
    @jobevent = Jobevent.new
  end

  # GET /jobevents/1/edit
  def edit
  end

  # POST /jobevents or /jobevents.json
  def create
    @jobevent = Jobevent.new(jobevent_params)

    respond_to do |format|
      if @jobevent.save
        format.html { redirect_to @jobevent, notice: "Jobevent was successfully created." }
        format.json { render :show, status: :created, location: @jobevent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobevents/1 or /jobevents/1.json
  def update
    respond_to do |format|
      if @jobevent.update(jobevent_params)
        format.html { redirect_to @jobevent, notice: "Jobevent was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @jobevent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobevents/1 or /jobevents/1.json
  def destroy
    @jobevent.destroy!

    respond_to do |format|
      format.html { redirect_to jobevents_path, notice: "Jobevent was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobevent
      @jobevent = Jobevent.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def jobevent_params
      params.expect(jobevent: [ :title, :description, :date, :lat, :lon ])
    end
end
