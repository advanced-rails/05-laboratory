class MathController < ApplicationController
    def dups
        if request.post?
            numbers = params[:numbers].split(',').map(&:to_i)
            @counter = numbers.inject(Hash.new(0)){|h, n| h[n] += 1; h }
        end
    end
    
    def get_ransum
        render 'ransum'
    end
    
    def post_ransum
        count = params[:count].to_i
        start, stop = params[:range].split(',').map{|x| x.to_i}
        @numbers = count.times.map{ rand(start..stop) }
        @sum = @numbers.sum
        render 'ransum'
    end
    
    def showadd
    end
    
    def computeadd
        @x = params[:x].to_f
        @y = params[:y].to_f
        @sum = @x + @y
        render 'showadd'
    end

    def root
        @orig = params[:x].to_i
        @square =  @orig ** 0.5
    end
end
