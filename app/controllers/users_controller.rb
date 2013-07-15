class UsersController < ApplicationController
  def index
    page  = params.fetch(:page, 0)
    per   = params.fetch(:per, 20)
    users = User.page(page).per(per)

    render(json: users)
  end

  def show
    user = User.find(params[:id])
    render(json: user)
  end
end
