#encoding: utf-8
class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => ENV['SITE_USER'], :password => ENV['SITE_PASSWORD']
  protect_from_forgery
end
