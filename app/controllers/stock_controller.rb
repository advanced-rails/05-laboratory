class StockController < ApplicationController
    def quote
        if request.post?
            r = HTTParty.get("https://www.google.com/finance/getprices?q=#{params[:symbol].upcase}&x=NASD&i=120&p=15m&f=c&df=cpct").body
            @amount = r.split("\n").last.to_f.round(2)
        end
    end
end
