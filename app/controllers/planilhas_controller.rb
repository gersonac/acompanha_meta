class PlanilhasController < ApplicationController
  before_action :set_planilha, only: [:show, :edit, :update, :destroy]

  # GET /planilhas
  # GET /planilhas.json
  def index
    @planilhas = Planilha.all
  end

  # GET /planilhas/1
  # GET /planilhas/1.json
  def show
  end

  # GET /planilhas/new
  def new
    @planilha = Planilha.new
  end

  # GET /planilhas/1/edit
  def edit
  end

  # POST /planilhas
  # POST /planilhas.json
  def create
    @planilha = Planilha.new(planilha_params)

    respond_to do |format|
      if @planilha.save
        format.html { redirect_to @planilha, notice: 'Planilha was successfully created.' }
        format.json { render :show, status: :created, location: @planilha }
      else
        format.html { render :new }
        format.json { render json: @planilha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planilhas/1
  # PATCH/PUT /planilhas/1.json
  def update
    respond_to do |format|
      if @planilha.update(planilha_params)
        format.html { redirect_to @planilha, notice: 'Planilha was successfully updated.' }
        format.json { render :show, status: :ok, location: @planilha }
      else
        format.html { render :edit }
        format.json { render json: @planilha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planilhas/1
  # DELETE /planilhas/1.json
  def destroy
    @planilha.destroy
    respond_to do |format|
      format.html { redirect_to planilhas_url, notice: 'Planilha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planilha
      @planilha = Planilha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planilha_params
      params.require(:planilha).permit(:user_id, :meta, :year)
    end
end
