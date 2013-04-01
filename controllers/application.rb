require "sinatra/base"
require "slim"
require "securerandom"

class ApplicationController < Sinatra::Base

  configure do
    set :root, File.join(__dir__, "..")
    enable :method_override, :sessions
    set :session_secret, SecureRandom.hex
  end

end
