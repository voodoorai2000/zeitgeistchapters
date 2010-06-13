# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_chapters_session',
  :secret      => 'aef4da42e7dc07091f363666dd4162117a40adc8398a9aa6186069a21ae182461a2bb3024655e8d34699f3c54e20eba2a2bd14dd8c188566fde653138d4e63ad'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
