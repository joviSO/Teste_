class ExtractsController < ApplicationController
  before_action :set_extract, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /extracts
  # GET /extracts.json
  def index
    @q = Extract.ransack(params[:q])
    @extracts = @q.result
    @soma_dos_valores = soma
    
    respond_to do |format|
      format.html
      format.csv {send_data Extract.to_csv(@extracts)}
    end
  end

  # GET /extracts/1
  # GET /extracts/1.json
  def show; end

  # GET /extracts/new
  def new
    @extract = Extract.new #(contum_id: params[:contum_id])
  end
  #def
    #@extract = Extract.new(variations: [Variation.new( Contum.find parms[])])
  #end
  # GET /extracts/1/edit
  def edit; end

  # POST /extracts
  # POST /extracts.json
  def create
    @extract = Extract.new(extract_params)

    respond_to do |format|
      if @extract.save
        format.html { redirect_to @extract, notice: 'Extract was successfully created.' }
        format.json { render :show, status: :created, location: @extract }
      else
        format.html { render :new }
        format.json { render json: @extract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extracts/1
  # PATCH/PUT /extracts/1.json
  def update
    respond_to do |format|
      if @extract.update(extract_params)
        format.html { redirect_to @extract, notice: 'Extract was successfully updated.' }
        format.json { render :show, status: :ok, location: @extract }
      else
        format.html { render :edit }
        format.json { render json: @extract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extracts/1
  # DELETE /extracts/1.json
  def destroy
    @extract.destroy
    respond_to do |format|
      format.html { redirect_to extracts_url, notice: 'Extract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extract
      @extract = Extract.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def extract_params
      params.require(:extract).permit(:movimentacao, :tipo, :valor)
    end

    def soma
      Extract.total.round(2)
    end
end   