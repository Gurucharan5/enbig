class AdminDashboardController < ApplicationController
  before_action :authenticate_admin!

    def index
        # Your admin dashboard logic here
    end

    def option1
    end
    
end
