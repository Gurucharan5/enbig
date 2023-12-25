class AdminDashboardController < ApplicationController
  before_action :authenticate_admin!

    def index
      redirect_to admin_home_path
    end

    def home 
      
    end

    def option1
    end

    
    
end
