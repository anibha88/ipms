class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  # GET /Results
  # GET /Results.json
  def index
    @results = Result.all
  end

  # GET /Results/1
  # GET /Results/1.json
  def show
  end

  # GET /Results/new
  def new
    @result = Result.new
  end

  # GET /Results/1/edit
  def edit
  end

  # POST /Results
  # POST /Results.json
  def create
    @result = Result.new(result_params)

    respond_to do |format|
      if @Result.save
        format.html { redirect_to @result, notice: 'Result was successfully created.' }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Results/1
  # PATCH/PUT /Results/1.json
  def update
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @Result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Results/1
  # DELETE /Results/1.json
  def destroy
    @result.destroy
    respond_to do |format|
      format.html { redirect_to results_url, notice: 'Result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:Results, :comp, :area)
    end

end