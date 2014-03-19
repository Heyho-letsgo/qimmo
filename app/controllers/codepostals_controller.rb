class CodepostalsController < ApplicationController
  before_action :set_codepostal, only: [:show, :edit, :update, :destroy]

  # GET /codepostals
  # GET /codepostals.json
  def index
    @codepostals = Codepostal.all
  end

  # GET /codepostals/1
  # GET /codepostals/1.json
  def show
  end

  # GET /codepostals/new
  def new
    @codepostal = Codepostal.new
  end

  # GET /codepostals/1/edit
  def edit
  end

  # POST /codepostals
  # POST /codepostals.json
  def create
    @codepostal = Codepostal.new(codepostal_params)

    respond_to do |format|
      if @codepostal.save
        format.html { redirect_to @codepostal, notice: 'Codepostal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @codepostal }
      else
        format.html { render action: 'new' }
        format.json { render json: @codepostal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /codepostals/1
  # PATCH/PUT /codepostals/1.json
  def update
    respond_to do |format|
      if @codepostal.update(codepostal_params)
        format.html { redirect_to @codepostal, notice: 'Codepostal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @codepostal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codepostals/1
  # DELETE /codepostals/1.json
  def destroy
    @codepostal.destroy
    respond_to do |format|
      format.html { redirect_to codepostals_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
   # def set_codepostal
    #  @codepostal = Codepostal.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def codepostal_params
      params.require(:codepostal).permit(:code)
    end
end
