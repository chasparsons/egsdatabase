class OpCodeLinksController < ApplicationController
  before_action :set_op_code_link, only: [:show, :edit, :update, :destroy]

  # GET /op_code_links
  # GET /op_code_links.json
  def index
    @op_code_links = OpCodeLink.all
  end

  # GET /op_code_links/1
  # GET /op_code_links/1.json
  def show
  end

  # GET /op_code_links/new
  def new
    @op_code_link = OpCodeLink.new
  end

  # GET /op_code_links/1/edit
  def edit
  end

  # POST /op_code_links
  # POST /op_code_links.json
  def create
    @op_code_link = OpCodeLink.new(op_code_link_params)

    respond_to do |format|
      if @op_code_link.save
        format.html { redirect_to @op_code_link, notice: 'Op code link was successfully created.' }
        format.json { render :show, status: :created, location: @op_code_link }
      else
        format.html { render :new }
        format.json { render json: @op_code_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /op_code_links/1
  # PATCH/PUT /op_code_links/1.json
  def update
    respond_to do |format|
      if @op_code_link.update(op_code_link_params)
        format.html { redirect_to @op_code_link, notice: 'Op code link was successfully updated.' }
        format.json { render :show, status: :ok, location: @op_code_link }
      else
        format.html { render :edit }
        format.json { render json: @op_code_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /op_code_links/1
  # DELETE /op_code_links/1.json
  def destroy
    @op_code_link.destroy
    respond_to do |format|
      format.html { redirect_to op_code_links_url, notice: 'Op code link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_op_code_link
      @op_code_link = OpCodeLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def op_code_link_params
      params.require(:op_code_link).permit(:has_many, :order)
    end
end
