class TyysController < ApplicationController
  before_action :set_tyy, only: [:show, :edit, :update, :destroy]

  # GET /tyys
  # GET /tyys.json
  def index
    @tyys = Tyy.all
  end

  # GET /tyys/1
  # GET /tyys/1.json
  def show
  end

  # GET /tyys/new
  def new
    @tyy = Tyy.new
  end

  # GET /tyys/1/edit
  def edit
  end

  # POST /tyys
  # POST /tyys.json
  def create
    @tyy = Tyy.new(tyy_params)

    respond_to do |format|
      if @tyy.save
        format.html { redirect_to @tyy, notice: 'Tyy was successfully created.' }
        format.json { render :show, status: :created, location: @tyy }
      else
        format.html { render :new }
        format.json { render json: @tyy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tyys/1
  # PATCH/PUT /tyys/1.json
  def update
    respond_to do |format|
      if @tyy.update(tyy_params)
        format.html { redirect_to @tyy, notice: 'Tyy was successfully updated.' }
        format.json { render :show, status: :ok, location: @tyy }
      else
        format.html { render :edit }
        format.json { render json: @tyy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tyys/1
  # DELETE /tyys/1.json
  def destroy
    @tyy.destroy
    respond_to do |format|
      format.html { redirect_to tyys_url, notice: 'Tyy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tyy
      @tyy = Tyy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tyy_params
      params.require(:tyy).permit(:try, :ewqw)
    end
end
