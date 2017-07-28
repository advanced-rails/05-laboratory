class ClockController < ApplicationController
    def time
        @time = Time.now
    end
end
