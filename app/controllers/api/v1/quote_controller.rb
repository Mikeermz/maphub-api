class Api::V1::QuoteController < ApplicationController
	def all_quote
	  quote = Quote.all

	  render json: quote.as_json()
	end
end
