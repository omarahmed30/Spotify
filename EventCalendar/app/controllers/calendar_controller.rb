class CalendarController < ApplicationController
    before_action :set_calendar, only: [:show, :edit, :update, :destroy]
   
    skip_before_action :verify_authenticity_token
    require 'date'
    require 'active_support/core_ext/time'
    require 'active_support/core_ext/array'

    

    def index
        @calendars = Calendar.all

        @date = Date.today  
        @first_calendar_day = @date.beginning_of_month.beginning_of_week(:sunday)
        @last_calendar_day = @date.end_of_month.end_of_week(:sunday)
        @weeks = (@first_calendar_day..@last_calendar_day).to_a.in_groups_of(7)

        # render json: {status: "Success", message: "Loaded events", data:@calendars}, status: :ok
        
    end

    def new
        @calendar = Calendar.new
    end

    def show
        # render json: {status: "Success", message: "Loaded events", data:@calendar}, status: :ok
    end

    def create
        @calendar = Calendar.new(calendar_params)
        if @calendar.save
            redirect_to root_path
        else
            render 'new'
        end
        
    end

    def edit
    end

    def update
        respond_to do |format|
          if @calendar.update(calendar_params)
            format.html { redirect_to root_url, notice: 'Event was successfully updated.' }
            format.json { render :show, status: :ok, location: @calendar }
          else
            format.html { render :edit }
            format.json { render json: @calendar.errors, status: :unprocessable_entity }
          end
        end
      end
  
    
    def destroy
        @calendar.destroy
        respond_to do |format|
          format.html { redirect_to root_url, notice: 'Event was successfully deleted.' }
          format.json { head :no_content }
        end
    end

    private

        def calendar_params
            params.require(:calendar).permit(:event_name, :event_description, :start_date, :end_date)
        end

        def set_calendar
            @calendar = Calendar.find(params[:id])
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
