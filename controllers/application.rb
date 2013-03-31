require "sinatra/base"
require "slim"
require "securerandom"

class ApplicationController < Sinatra::Base

  configure :development do
    require "sinatra/reloader"
    register Sinatra::Reloader
    #also_reload
  end

  configure do
    set :root, File.join(__dir__, "..")
    enable :method_override, :sessions
    set :session_secret, SecureRandom.hex
  end

end