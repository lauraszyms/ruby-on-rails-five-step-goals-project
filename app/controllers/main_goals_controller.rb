class MainGoalsController < ApplicationController
  before_action :set_main_goal, only: [:show, :edit, :update, :destroy]

  def index
   @main_goals = MainGoal.all
   @categories = Category.all
  end

  def show
   @user = current_user
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
      redirect_to @main_goal
   else
    render :new
   end
  end

  def edit
  end

  def update
    @main_goal.update(main_goal_params)
    redirect_to @main_goal
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
        category_ids:[],
        categories_attributes: [:name],
        goal_steps_attributes: [
          :title,
          :summary,
          :status
        ]
      )
    end
end
