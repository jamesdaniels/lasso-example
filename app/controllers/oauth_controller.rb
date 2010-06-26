class OauthController < ApplicationController

  processes_oauth_transactions_for :access_keys,
                                   :through  => lambda { current_user || User.new },
                                   :callback => lambda { oauth_callback_url },
                                   :conflict => :handle_existing_oauth,
                                   :login    => :handle_oauth_login
                                   
  def handle_oauth_login(user)
    @user_session = UserSession.new(user)
    if @user_session.save
      flash[:notice] = "Login successful!"
      redirect_back_or_default account_url
    else
      redirect_to new_user_session_path
    end
  end
  
  def handle_existing_oauth(user)
    flash[:error] = "That account is associated with a different user!"
    redirect_to account_url
  end

end