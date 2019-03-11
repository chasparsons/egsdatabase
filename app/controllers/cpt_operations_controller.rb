class CptOperationsController < ApplicationController
  before_action :set_cpt_operation, only: [:show, :edit, :update, :destroy]

  # GET /cpt_operations
  # GET /cpt_operations.json
  def index
    @cpt_operations = CptOperation.all
  end

  # GET /cpt_operations/1
  # GET /cpt_operations/1.json
  def show
  end

  # GET /cpt_operations/new
  def new
    @cpt_operation = CptOperation.new
  end

  # GET /cpt_operations/1/edit
  def edit
  end

  # POST /cpt_operations
  # POST /cpt_operations.json
  def create
    @cpt_operation = CptOperation.new(cpt_operation_params)

    respond_to do |format|
      if @cpt_operation.save
        format.html { redirect_to @cpt_operation, notice: 'Cpt operation was successfully created.' }
        format.json { render :show, status: :created, location: @cpt_operation }
      else
        format.html { render :new }
        format.json { render json: @cpt_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpt_operations/1
  # PATCH/PUT /cpt_operations/1.json
  def update
    respond_to do |format|
      if @cpt_operation.update(cpt_operation_params)
        format.html { redirect_to @cpt_operation, notice: 'Cpt operation was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpt_operation }
      else
        format.html { render :edit }
        format.json { render json: @cpt_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpt_operations/1
  # DELETE /cpt_operations/1.json
  def destroy
    @cpt_operation.destroy
    respond_to do |format|
      format.html { redirect_to cpt_operations_url, notice: 'Cpt operation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpt_operation
      @cpt_operation = CptOperation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpt_operation_params
      params.require(:cpt_operation).permit(:cpt_id, :operation_id, :order)
    end
end
