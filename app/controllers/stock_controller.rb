class StockController < ApplicationController

  def home
   
  end

  def result
    @symbol= params[:q].upcase
   # @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade

    @quotes = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)
  end

  

end