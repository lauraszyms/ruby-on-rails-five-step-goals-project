class MainGoalsController < ApplicationController

  def index
   @main_goals = MainGoal.all
  end

  def show
   @main_goal = MainGoal.find_by(:id => params[:id])
   @user = current_user
  end

  def new
    @main_goal = MainGoal.new
  end

  def create
    @main_goal = MainGoal.create(main_goal_params)
    @main_goal.status = "Incomplete"
    @main_goal.save
    redirect_to @main_goal
  end

  def edit
    @main_goal = MainGoal.find_by(:id => params[:id])
  end

  def update
    @main_goal = MainGoal.find_by(:id => params[:id])
    @main_goal.update(main_goal_params)
    redirect_to @main_goal
  end

  private
    def main_goal_params
        params.require(:main_goal).permit(:name, :category, :summary, :status)
    end
end
