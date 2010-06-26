class OauthController < ApplicationController

  processes_oauth_transactions_for :access_keys,
                                   :through  => lambda { current_user || User.new },
                                   :callback => lambda { oauth_callback_url }

end