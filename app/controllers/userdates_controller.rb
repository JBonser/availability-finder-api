class UserdatesController < ApplicationController
  before_action :authenticate_user, set_userdate, only: [:show, :update, :destroy]

  # GET /userdates
  def index
    @userdates = Userdate.all

    render json: @userdates
  end

  # GET /userdates/1
  def show
    render json: @userdate
  end

  # POST /userdates
  def create
    @userdate = Userdate.new(userdate_params)

    if @userdate.save
      render json: @userdate, status: :created, location: @userdate
    else
      render json: @userdate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userdates/1
  def update
    if @userdate.update(userdate_params)
      render json: @userdate
    else
      render json: @userdate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userdates/1
  def destroy
    @userdate.destroy
  end

  def find_by_user
    render json: Userdate.where('user_id' => params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userdate
      @userdate = Userdate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def userdate_params
      params.require(:userdate).permit(:user_id, :date)
    end
end
