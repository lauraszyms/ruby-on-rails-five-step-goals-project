class GoalStepsController < ApplicationController
  before_action :set_goal_step, only: [:show, :edit, :update, :destroy]

  def index
   @main_goals = GoalStep.all
  end

  def show
   @user = current_user
  end

  def new
    @goal_step = GoalStep.new
  end

  def create
    @goal_step = GoalStep.create(goal_step_params)
    @goal_step.status = "Incomplete"
    @goal_step.save
    redirect_to main_goal_path(@goal_step.main_goal_id)
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
