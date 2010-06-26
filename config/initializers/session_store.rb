# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lasso-example_session',
  :secret      => '067fa34cb7620e45a851e05c4d05026c2bc412d8e48cb5debb1d45f3b8a6623f7de1ec4dc4e805fb5112203135fbc6f0f2c5a47f88ac45ae4d0fdf8418d0db64'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
