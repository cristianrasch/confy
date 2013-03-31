require_relative "../../controllers/welcome"
require_relative "../spec_helper"

def app
  WelcomeController
end

describe WelcomeController do
  it "saluda" do
    get "/"
    assert last_response.ok?
    assert_match /hola!/i, last_response.body
  end  
end