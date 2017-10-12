class FreindshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = "You are now following this new Twitter user."
      redirect_to root_url
    else
      flash[:notice] = "Unable to follow this user."
      redirect_to root_url
    end
  end

  def destroy
  end

end