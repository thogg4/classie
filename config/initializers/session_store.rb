# Be sure to restart your server when you modify this file.

<<<<<<< HEAD
Classie::Application.config.session_store :cookie_store, key: '_classie_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Classie::Application.config.session_store :active_record_store
=======
# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_classifieds_session',
  :secret      => 'bc161f62c2b5727ade478b316e108844df2316f68cb4490dfe88e650ac249fa4b614fcd9798091cc99475bb3deb8c7806056f324c40396b7e268872384c07e2d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
