class LoginsController < ApplicationController
  def show
  end

  def create
    u = User.
      find_by(username: params[:username]).
      try(:authenticate, params[:password])

    if u
      session[:user_id] = u.id
      return redirect_to tweets_path
    end

    redirect_to(login_path, notice: 'wrong login info, try again')
  end
end
