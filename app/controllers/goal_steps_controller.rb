class GoalStepsController < ApplicationController
  before_action :set_goal_step, only: [:show, :edit, :update, :destroy]
  before_action :set_main_goal

  def index
    @goal_steps = @main_goal.goal_steps
    render json: @goal_steps
  end

  def show
   @user = current_user
   render json: @goal_step
  end


  def new
    @goal_step = GoalStep.new
  end

  def create
    @goal_step = GoalStep.new(goal_step_params)
    @goal_step.main_goal_id = @main_goal.id
    @goal_step.save
    render json: @goal_step
  end

  def update
    @goal_step.update(goal_step_params)
    redirect_to main_goal_goal_step_path(@main_goal, @goal_step)
  end

  def destroy
   @goal_step.destroy
   redirect_to main_goal_path(@main_goal)
  end

  private
  def set_main_goal
    @main_goal = MainGoal.find_by(:id => params[:main_goal_id])
  end

  def set_goal_step
    @goal_step = GoalStep.find_by(:id => params[:id])
  end

  def goal_step_params
    params.require(:goal_step).permit(:title, :summary, :status, :main_goal_id)
  end
end
