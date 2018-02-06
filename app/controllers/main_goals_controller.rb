class MainGoalsController < ApplicationController

  def index
   @main_goals = MainGoal.all
  end

  def show
   @main_goal = MainGoal.find_by(:id => params[:id])
   @user = current_user
  end
end
