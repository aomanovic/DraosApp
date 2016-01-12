class SectionRowsController < ApplicationController
  before_action :set_section_row, only: [:show, :edit, :update, :destroy]

  # GET /section_rows
  # GET /section_rows.json
  def index
    @section_rows = SectionRow.all
  end

  # GET /section_rows/1
  # GET /section_rows/1.json
  def show
  end

  # GET /section_rows/new
  def new
    @section_row = SectionRow.new
  end

  # GET /section_rows/1/edit
  def edit
  end

  # POST /section_rows
  # POST /section_rows.json
  def create
    @section_row = SectionRow.new(section_row_params)

    respond_to do |format|
      if @section_row.save
        format.html { redirect_to @section_row, notice: 'Section row was successfully created.' }
        format.json { render :show, status: :created, location: @section_row }
      else
        format.html { render :new }
        format.json { render json: @section_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_rows/1
  # PATCH/PUT /section_rows/1.json
  def update
    respond_to do |format|
      if @section_row.update(section_row_params)
        format.html { redirect_to @section_row, notice: 'Section row was successfully updated.' }
        format.json { render :show, status: :ok, location: @section_row }
      else
        format.html { render :edit }
        format.json { render json: @section_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_rows/1
  # DELETE /section_rows/1.json
  def destroy
    @section_row.destroy
    respond_to do |format|
      format.html { redirect_to section_rows_url, notice: 'Section row was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_row
      @section_row = SectionRow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_row_params
      params.require(:section_row).permit(:name, :capacity, :section_id)
    end
end
