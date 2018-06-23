class CalendarController < ApplicationController
    # before_action :set_calendar, only: [:show, :edit, :update, :destroy]
    
    skip_before_action :verify_authenticity_token
    require 'date'
    def index
        @calendars = Calendar.all
        @date = params[:date] ? Date.parse(params[:date]) : Date.today
        # @date = Date.today
        @monthStart = @date.beginning_of_month.beginning_of_week(start_day = :sunday)
        @weekStart = @date.beginning_of_week(start_day = :sunday)
        # @days = days_in_month(6, year = Time.now.year)
        @days = Time.days_in_month(6, 2018)
        
    end

    def new
        @calendar = Calendar.new
    end

    def show
        @calendar = Calendar.find(params[:id])
    end

    def create
        @calendar = Calendar.new(calendar_params)
        if @calendar.save
            redirect_to root_path
        else
            render 'new'
        end
    end
  
    


    def set_calendar
        @calendar = Calendar.find(params[:id])
    end
    private

        def calendar_params
            params.permit(:event_name, :event_description, :start_date, :end_date)
        end




























    def calendar(date = Date.today, &block)
        Calendar.new(self, date, block).table
    end

    COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    def days_in_month(month, year = Time.now.year)
        return 29 if month == 2 && Date.gregorian_leap?(year)
        COMMON_YEAR_DAYS_IN_MONTH[month]
    end
end
