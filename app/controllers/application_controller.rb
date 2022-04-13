class ApplicationController < ActionController::Base
  def hello
    render html: "bonjour!"
  end
end
