class GoalStepsController < ApplicationController
  before_action :set_goal_step, only: [:show, :edit, :update, :destroy]

  def index
   @main_goal = MainGoal.find_by(:id => params[:main_goal_id])
  end

  def show
   @user = current_user
  end

  def new
    @goal_step = GoalStep.new
    @main_goal = MainGoal.find_by(@goal_step.main_goal_id)
  end

  def create
  end

  def edit
  end

  def update
    @goal_step.update(goal_step_params)
    redirect_to main_goal_goal_step_path(@goal_step.main_goal_id, @goal_step)
  end

  def destroy
   id = @goal_step.main_goal_id
   @goal_step.destroy
   redirect_to main_goal_path(id)
  end

  private
  def set_goal_step
    @goal_step = GoalStep.find_by(:id => params[:id])
  end

  def goal_step_params
    params.require(:goal_step).permit(:title, :summary, :status, :main_goal_id)
  end
end
