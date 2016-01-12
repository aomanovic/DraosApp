class VenueLayoutsController < ApplicationController
  before_action :set_venue_layout, only: [:show, :edit, :update, :destroy]

  # GET /venue_layouts
  # GET /venue_layouts.json
  def index
    @venue_layouts = VenueLayout.all
  end

  # GET /venue_layouts/1
  # GET /venue_layouts/1.json
  def show
  end

  # GET /venue_layouts/new
  def new
    @venue_layout = VenueLayout.new
  end

  # GET /venue_layouts/1/edit
  def edit
  end

  # POST /venue_layouts
  # POST /venue_layouts.json
  def create
    @venue_layout = VenueLayout.new(venue_layout_params)

    respond_to do |format|
      if @venue_layout.save
        format.html { redirect_to @venue_layout, notice: 'Venue layout was successfully created.' }
        format.json { render :show, status: :created, location: @venue_layout }
      else
        format.html { render :new }
        format.json { render json: @venue_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venue_layouts/1
  # PATCH/PUT /venue_layouts/1.json
  def update
    respond_to do |format|
      if @venue_layout.update(venue_layout_params)
        format.html { redirect_to @venue_layout, notice: 'Venue layout was successfully updated.' }
        format.json { render :show, status: :ok, location: @venue_layout }
      else
        format.html { render :edit }
        format.json { render json: @venue_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venue_layouts/1
  # DELETE /venue_layouts/1.json
  def destroy
    @venue_layout.destroy
    respond_to do |format|
      format.html { redirect_to venue_layouts_url, notice: 'Venue layout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue_layout
      @venue_layout = VenueLayout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venue_layout_params
      params.require(:venue_layout).permit(:venue_id, :name, :capacity)
    end
end
