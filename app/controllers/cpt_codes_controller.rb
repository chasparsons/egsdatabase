class CptCodesController < ApplicationController
  before_action :set_cpt_code, only: [:show, :edit, :update, :destroy]

  # GET /cpt_codes
  # GET /cpt_codes.json
  def index
    @cpt_codes = CptCode.all
  end

  # GET /cpt_codes/1
  # GET /cpt_codes/1.json
  def show
  end

  # GET /cpt_codes/new
  def new
    @cpt_code = CptCode.new
  end

  # GET /cpt_codes/1/edit
  def edit
  end

  # POST /cpt_codes
  # POST /cpt_codes.json
  def create
    @cpt_code = CptCode.new(cpt_code_params)

    respond_to do |format|
      if @cpt_code.save
        format.html { redirect_to @cpt_code, notice: 'Cpt code was successfully created.' }
        format.json { render :show, status: :created, location: @cpt_code }
      else
        format.html { render :new }
        format.json { render json: @cpt_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpt_codes/1
  # PATCH/PUT /cpt_codes/1.json
  def update
    respond_to do |format|
      if @cpt_code.update(cpt_code_params)
        format.html { redirect_to @cpt_code, notice: 'Cpt code was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpt_code }
      else
        format.html { render :edit }
        format.json { render json: @cpt_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpt_codes/1
  # DELETE /cpt_codes/1.json
  def destroy
    @cpt_code.destroy
    respond_to do |format|
      format.html { redirect_to cpt_codes_url, notice: 'Cpt code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpt_code
      @cpt_code = CptCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpt_code_params
      params.require(:cpt_code).permit(:area, :cptcode, :description)
    end
end
