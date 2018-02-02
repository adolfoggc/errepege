class HomeController < ApplicationController


def index
	@rena = Scenario.find(1);
end


end
