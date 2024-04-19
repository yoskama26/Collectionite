class CollectorsController < ApplicationController
  before_action :set_collector, only: %i[ show edit update destroy ]

  def index
    @collectors = Collector.all
  end

  def show
    @collector = Collector.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @collector }
    end
  end

  def show
  end

  # GET /collectors/new
  def new
    @collector = Collector.new
  end

  # GET /collectors/1/edit
  def edit
  end

  def create
    @collector = Collector.new(collector_params)

    respond_to do |format|
      if @collector.save
        format.html { redirect_to collector_url(@collector), notice: "Collector was successfully created." }
        format.json { render :show, status: :created, location: @collector }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collectors/1 or /collectors/1.json
  def update
    respond_to do |format|
      if @collector.update(collector_params)
        format.html { redirect_to collector_url(@collector), notice: "Collector was successfully updated." }
        format.json { render :show, status: :ok, location: @collector }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collectors/1 or /collectors/1.json
  def destroy
    @collector.destroy!

    respond_to do |format|
      format.html { redirect_to collectors_url, notice: "Collector was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collector
      @collector = Collector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collector_params
      params.require(:collector).permit(:name)
    end
end
