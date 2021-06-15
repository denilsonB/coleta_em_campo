class VisitsController < ApplicationController
  # GET /visits
  def index
    @visits = Visit.all

    render json: @visits
  end

  # GET /visits/1
  def show
    @visit = Visit.find_by(id:params[:id])
    render json: @visit
  end

  # POST /visits
  def create
    @visit = Visit.new(visit_params)

    if @visit.save
      render json: @visit, status: :created, location: @visit
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /visits/1
  def update
    @visit = Visit.find_by(id:params[:id])

    if @visit.update(visit_params)
      render json: @visit
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /visits/1
  def destroy
    @visit = Visit.find_by(id:params[:id])
    @visit.destroy
  end

  private

    # Only allow a list of trusted parameters through.
    def visit_params
      params.require(:visit).permit(:date, :status, :user_id, :checkin_at, :checkout_at)
    end
end
