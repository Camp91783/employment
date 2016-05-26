class HomeController < ApplicationController
	before_filter :require_login, :only => :secret

  def about
  end

  def index
  end

  def secret
  end
end
