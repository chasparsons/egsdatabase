class OpcodesController < ApplicationController
  before_action :set_opcode, only: [:show, :edit, :update, :destroy]

  # GET /opcodes
  # GET /opcodes.json
  def index
    @opcodes = Opcode.all
  end

  # GET /opcodes/1
  # GET /opcodes/1.json
  def show
  end

  # GET /opcodes/new
  def new
    @opcode = Opcode.new
  end

  # GET /opcodes/1/edit
  def edit
  end

  # POST /opcodes
  # POST /opcodes.json
  def create
    @opcode = Opcode.new(opcode_params)

    respond_to do |format|
      if @opcode.save
        format.html { redirect_to @opcode, notice: 'Opcode was successfully created.' }
        format.json { render :show, status: :created, location: @opcode }
      else
        format.html { render :new }
        format.json { render json: @opcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opcodes/1
  # PATCH/PUT /opcodes/1.json
  def update
    respond_to do |format|
      if @opcode.update(opcode_params)
        format.html { redirect_to @opcode, notice: 'Opcode was successfully updated.' }
        format.json { render :show, status: :ok, location: @opcode }
      else
        format.html { render :edit }
        format.json { render json: @opcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opcodes/1
  # DELETE /opcodes/1.json
  def destroy
    @opcode.destroy
    respond_to do |format|
      format.html { redirect_to opcodes_url, notice: 'Opcode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opcode
      @opcode = Opcode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opcode_params
      params.require(:opcode).permit(:operation_id, :cpt_codes_id, :order)
    end
end
