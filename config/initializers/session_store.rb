# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mycomplexform_session',
  :secret      => '8e505eb227e13b8ed8aadb3daa9b234900a60387b2e235c0fdfd8b9546e10387ac623de7da8c30b2284dc45412957228f457aec128f80c77efe276735fc0de0d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
