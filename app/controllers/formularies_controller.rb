class FormulariesController < ApplicationController
  
  # GET /formularies
  def index
    @formularies = Formulary.all

    render json: @formularies
  end

  # GET /formularies/1
  def show
    @formulary = Formulary.find_by(id:params[:id])
    render json: @formulary
  end

  # POST /formularies
  def create
    @formulary = Formulary.new(formulary_params)

    if @formulary.save
      render json: @formulary, status: :created, location: @formulary
    else
      render json: @formulary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formularies/1
  def update
    @formulary = Formulary.find_by(id:params[:id])
    if @formulary.update(formulary_params)
      render json: @formulary
    else
      render json: @formulary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formularies/1
  def destroy
    @formulary = Formulary.find_by(id:params[:id])
    @formulary.destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def formulary_params
      params.require(:formulary).permit(:name)
    end
end
