class QuoteController < ApplicationController

def home
    @quote = Quote.random_quote
end

def index
    @quotes = Quote.all
end

def show
    @quote = Quote.find_by( params[ :id ] )
end

def new
    @quote = Quote.new
end

def create
    quote = Quote.create( quote_params )
end

private
def quote_params
    params.require( :quote ).permit( :quote, :author, :favorite )
end

end
