class DiceController < ApplicationController
    def roll
        @roll = rand(1..6)
    end
end
