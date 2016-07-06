class MetasController < ApplicationController
  before_action :set_meta, only: [:show, :edit, :update, :destroy]

  # GET /metas
  # GET /metas.json
  # def index
  #   @metas = Meta.all
  # end

  # GET /metas/1
  # GET /metas/1.json
  def show
  end

  # GET /metas/new
  # def new
  #   @meta = Meta.new
  # end

  # GET /metas/1/edit
  def edit
  end

  # POST /metas
  # POST /metas.json
  # def create
  #   @meta = Meta.new(meta_params)
  #
  #   respond_to do |format|
  #     if @meta.save
  #       format.html { redirect_to @meta, notice: 'Meta was successfully created.' }
  #       format.json { render :show, status: :created, location: @meta }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @meta.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /metas/1
  # PATCH/PUT /metas/1.json
  def update
    respond_to do |format|
      if @meta.update(meta_params)
        format.html { redirect_to @meta, notice: 'Meta was successfully updated.' }
        format.json { render :show, status: :ok, location: @meta }
      else
        format.html { render :edit }
        format.json { render json: @meta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metas/1
  # DELETE /metas/1.json
  # def destroy
  #   @meta.destroy
  #   respond_to do |format|
  #     format.html { redirect_to metas_url, notice: 'Meta was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meta
      @meta = Meta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meta_params
      params.require(:meta).permit(:value)
    end
end
