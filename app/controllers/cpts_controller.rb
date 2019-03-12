class CptsController < ApplicationController
  before_action :set_cpt, only: [:show, :edit, :update, :destroy]

  # GET /cpts
  # GET /cpts.json
  def index
      @cpts = Cpt.all #no scope, gets all CPT records
      @cpts = @cpts.category(params[:category]) if params[:category].present? 
  end

  # GET /cpts/1
  # GET /cpts/1.json
  def show
  end

  # GET /cpts/new
  def new
    @cpt = Cpt.new
  end

  # GET /cpts/1/edit
  def edit
  end

  # POST /cpts
  # POST /cpts.json
  def create
    @cpt = Cpt.new(cpt_params)

    respond_to do |format|
      if @cpt.save
        format.html { redirect_to @cpt, notice: 'Cpt was successfully created.' }
        format.json { render :show, status: :created, location: @cpt }
      else
        format.html { render :new }
        format.json { render json: @cpt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpts/1
  # PATCH/PUT /cpts/1.json
  def update
    respond_to do |format|
      if @cpt.update(cpt_params)
        format.html { redirect_to @cpt, notice: 'Cpt was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpt }
      else
        format.html { render :edit }
        format.json { render json: @cpt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpts/1
  # DELETE /cpts/1.json
  def destroy
    @cpt.destroy
    respond_to do |format|
      format.html { redirect_to cpts_url, notice: 'Cpt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def show_category 
      @cpts = Cpt.where(:category => params[:category])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpt
      @cpt = Cpt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpt_params
      params.require(:cpt).permit(:category, :code, :description)
    end
end
