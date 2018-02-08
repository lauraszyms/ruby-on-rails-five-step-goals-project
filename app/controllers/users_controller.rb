class UsersController < ApplicationController

  def show
    @main_goal = MainGoal.find_by(:id => params[:id])
  end
end
