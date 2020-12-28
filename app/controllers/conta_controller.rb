class ContaController < ApplicationController
  before_action :set_contum, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource
  
  # GET /conta
  # GET /conta.json
  def index
    @conta = Contum.by_user(current_user)
  end

  # GET /conta/1
  # GET /conta/1.json
  def show
  end

  # GET /conta/new
  def new
    @contum = Contum.new
  end

  # GET /conta/1/edit
  def edit
  end

  # POST /conta
  # POST /conta.json
  def create
    @contum = Contum.new(contum_params)
    @contum.userId = current_user.id

    respond_to do |format|
      if @contum.save
        format.html { redirect_to @contum, notice: 'Contum was successfully created.' }
        format.json { render :show, status: :created, location: @contum }
      else
        format.html { render :new }
        format.json { render json: @contum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conta/1
  # PATCH/PUT /conta/1.json
  def update
    respond_to do |format|
      if @contum.update(contum_params)
        format.html { redirect_to @contum, notice: 'Contum was successfully updated.' }
        format.json { render :show, status: :ok, location: @contum }
      else
        format.html { render :edit }
        format.json { render json: @contum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conta/1
  # DELETE /conta/1.json
  def destroy
    @contum.destroy
    respond_to do |format|
      format.html { redirect_to conta_url, notice: 'Contum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contum
      @contum = Contum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contum_params
      params.require(:contum).permit(:nomeDaConta, :userId)
    end 
end
