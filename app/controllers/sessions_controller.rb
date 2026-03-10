class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ログイン成功の処理（後で書く）
    else
      render 'new', status: :unprocessable_entity
    end       # ← if文のend
  end         # ← createアクションのend

  def destroy
  end

end           # ← classのend