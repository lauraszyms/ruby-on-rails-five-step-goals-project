class UsersController < ApplicationController

  def show
    @user = current_user
    @overdue = current_user.main_goals.in_progress.overdue
    @completed = current_user.main_goals.completed
  end
end
