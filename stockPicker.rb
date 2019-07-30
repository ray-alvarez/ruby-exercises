def stockPicker(stockPrices)

    maxProfit = 0
    bestDaytoBuy = -1
    bestDaytoSell = -1
    
    stockPrices.each_with_index do |buyPrice, day|

        break if day == stockPrices.length-1
        nextDaysPrices = stockPrices.slice(day+1,stockPrices.length)
        sellPrice = nextDaysPrices.max
        next if sellPrice < buyPrice 
        profitIntheDay = sellPrice - buyPrice
        next if profitIntheDay < maxProfit
        maxProfit = profitIntheDay
        bestDaytoBuy = day
        bestDaytoSell = stockPrices.index(sellPrice)

    end

    puts "max profix = #{maxProfit}"
    puts "buy = #{bestDaytoBuy} , sell = #{bestDaytoSell}"

    return [bestDaytoBuy,bestDaytoSell]
    
end

stockPicker([17,3,6,9,15,8,6,1,10])
