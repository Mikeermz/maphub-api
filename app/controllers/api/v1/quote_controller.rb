class Api::V1::QuoteController < ApplicationController
	def all_quote
	  quote = Quote.all

	  render json: quote, :except => [:created_at, :updated_at]
	end
end
