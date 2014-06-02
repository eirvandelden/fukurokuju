class QuotesController < ApplicationController
    before_action :set_quote, only: [ :edit, :update, :destroy ]
    skip_before_filter :require_login, only: [ :home ]

def index
    @quotes = current_user.quotes
    @public_quotes = Quote.public
end

def home
    @quote = ( current_user.blank? ? Quote.random_quote : Quote.random_quote_of_user( current_user ) )
end

def new
    @quote = Quote.new
end

def edit #handeld by before action
end

def create
    @quote = Quote.new(quote_params)
    @quote.user = current_user

    respond_to do |format|
        if @quote.save
            format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
            format.json { render :show, status: :created, location: @quote }
            else
            format.html { render :new }
            format.json { render json: @quote.errors, status: :unprocessable_entity }
        end
    end
end

def update
    respond_to do |format|
        if @quote.update(quote_params)
            format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
            format.json { render :show, status: :ok, location: @quote }
            else
            format.html { render :edit }
            format.json { render json: @quote.errors, status: :unprocessable_entity }
        end
    end
end

def destroy
    @quote.destroy
    respond_to do |format|
        format.html { redirect_to quotes_url, notice: 'Quote was successfully destroyed.' }
        format.json { head :no_content }
    end
end

private
# Use callbacks to share common setup or constraints between actions.
def set_quote
    @quote = Quote.find(params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.
def quote_params
    params.require( :quote ).permit( :quote, :author, :favorite, :colour_id, :audio, :background)
end
end
