class HomeController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.limit(10).order(:created_by)
  end
end
