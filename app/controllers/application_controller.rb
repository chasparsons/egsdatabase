class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Ensures all actions invoke this (except those just below)
  before_filter :authenticate_user!
end
