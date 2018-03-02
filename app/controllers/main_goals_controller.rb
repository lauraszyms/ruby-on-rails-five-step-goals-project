class MainGoalsController < ApplicationController
  before_action :set_main_goal, only: [:show, :edit, :update, :destroy]

  def index
   @main_goals = MainGoal.all
   @categories = Category.all
  end

  def show
   @user = current_user
   @goal_step = GoalStep.new
  end

  def new
    @main_goal = MainGoal.new
    @categories = Category.all
  end

  def create
    @main_goal = MainGoal.create(main_goal_params)
    @main_goal.user_id = current_user.id
    @main_goal.duedate = DateTime.now + 30.day
   if @main_goal.valid?
      @main_goal.save
    if @main_goal.goal_steps.length < 5
      redirect_to main_goal_goal_steps_path(@main_goal)
    else
      redirect_to @main_goal
    end
   else
    render :new
   end
  end

  def edit
  end

  def update
   @main_goal.update(main_goal_params)
    if @main_goal.valid?
     if @main_goal.goal_steps.length < 5
      redirect_to @main_goal
     else
      redirect_to @main_goal
     end
    else
     render :new
  end
 end

  def destroy
   @main_goal.destroy
   redirect_to root_path
  end

  private
  def set_main_goal
    @main_goal = MainGoal.find_by(:id => params[:id])
  end

  def main_goal_params
      params.require(:main_goal).permit(
        :title,
        :summary,
        :status,
        :duedate,
        :user_id,
        category_ids:[],
        categories_attributes: [:name],
        goal_step_ids:[],
        goal_steps_attributes: [
          :title,
          :summary,
          :status
        ]
      )
    end
end
