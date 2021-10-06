class RelationshipsController < ApplicationController
  # フォローを作成する・フォローを削除する機能
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end

  # フォロー・フォロワー一覧を表示する

  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end

  # フォロー・フォロワーの一覧
  def follower
    user = User.find(params[:user_id])
    @users = user.followers
  end

  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end

end
