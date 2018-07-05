class UserdatesByUserController < ApplicationController
  def find_by_user
    @userdates = Userdate.where('user_id' => params[:id])
    render json: @userdates
  end
end
