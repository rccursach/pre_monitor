class DashboardController < ApplicationController
	include ActionController::Live
  def index
  end

  def update
  end

  def feed
  	n = Node.new;
  	render :json => n.get_all.to_a.to_json
  end
end
