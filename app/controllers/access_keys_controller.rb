class AccessKeysController < ApplicationController

  def show
    @access_key = current_user.access_keys.find(params[:id])
  end

  def destroy
    access_key = current_user.access_keys.find(params[:id])
    access_key.destroy
    redirect_to account_path
  end

end