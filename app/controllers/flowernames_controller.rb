class FlowernamesController < ApplicationController
  before_action :set_flowername, only: [:show, :edit, :update, :destroy]

  # GET /flowernames
  # GET /flowernames.json
  def index
    @flowernames = Flowername.all
  end

  # GET /flowernames/1
  # GET /flowernames/1.json
  def show
  end

  # GET /flowernames/new
  def new
    @flowername = Flowername.new
  end

  # GET /flowernames/1/edit
  def edit
  end

  # POST /flowernames
  # POST /flowernames.json
  def create
    @flowername = Flowername.new(flowername_params)

    respond_to do |format|
      if @flowername.save
        format.html { redirect_to @flowername, notice: 'Flowername was successfully created.' }
        format.json { render :show, status: :created, location: @flowername }
      else
        format.html { render :new }
        format.json { render json: @flowername.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flowernames/1
  # PATCH/PUT /flowernames/1.json
  def update
    respond_to do |format|
      if @flowername.update(flowername_params)
        format.html { redirect_to @flowername, notice: 'Flowername was successfully updated.' }
        format.json { render :show, status: :ok, location: @flowername }
      else
        format.html { render :edit }
        format.json { render json: @flowername.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flowernames/1
  # DELETE /flowernames/1.json
  def destroy
    @flowername.destroy
    respond_to do |format|
      format.html { redirect_to flowernames_url, notice: 'Flowername was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flowername
      @flowername = Flowername.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flowername_params
      params.require(:flowername).permit(:name, :description)
    end
end
