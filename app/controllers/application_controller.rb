# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
end
