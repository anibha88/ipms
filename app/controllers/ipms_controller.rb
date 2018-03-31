class IpmsController < ApplicationController
  before_action :set_ipm, only: [:show, :edit, :update, :destroy]

  # GET /ipms
  # GET /ipms.json
  def index
    @ipms = Ipm.all
  end

  # GET /ipms/1
  # GET /ipms/1.json
  def show
  end

  # GET /ipms/new
  def new
    @ipm = Ipm.new
  end

  # GET /ipms/1/edit
  def edit
  end

  # POST /ipms
  # POST /ipms.json
  def create
    @ipm = Ipm.new(ipm_params)

    respond_to do |format|
      if @ipm.save
        format.html { redirect_to @ipm, notice: 'Ipm was successfully created.' }
        format.json { render :show, status: :created, location: @ipm }
      else
        format.html { render :new }
        format.json { render json: @ipm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipms/1
  # PATCH/PUT /ipms/1.json
  def update
    respond_to do |format|
      if @ipm.update(ipm_params)
        format.html { redirect_to @ipm, notice: 'Ipm was successfully updated.' }
        format.json { render :show, status: :ok, location: @ipm }
      else
        format.html { render :edit }
        format.json { render json: @ipm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipms/1
  # DELETE /ipms/1.json
  def destroy
    @ipm.destroy
    respond_to do |format|
      format.html { redirect_to ipms_url, notice: 'Ipm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ipm
      @ipm = Ipm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ipm_params
      params.require(:ipm).permit(:organisation, :city, :office, :building, :floor, :building_type, :component)
    end
end
