class ColoursController < ApplicationController
    before_action :set_colours, only: [ :edit, :update, :destroy]

def index
    @colours = Colour.all
end

def new
    @colour = Colour.new
end

def edit #handeld by before action
end

def create
    @colour = Colour.new( colour_params )

    respond_to do |format|
        if @colour.save
            format.html { redirect_to @colour, notice: 'Colour was successfully created.' }
            else
            format.html { render :new }
        end
    end
end

def update
    respond_to do |format|
        if @colour.update( colour_params )
            format.html { redirect_to @colour, notice: 'Colour was successfully updated.' }
            else
            format.html { render :edit }
        end
    end
end

def destroy
    @colour.destroy
    respond_to do |format|
        format.html { redirect_to colours_url, notice: 'Colour was successfully destroyed.' }
        format.json { head :no_content }
    end
end

private
# Use callbacks to share common setup or constraints between actions.
def set_colours
    @colour = Colour.find( params[ :id ] )
end

# Never trust parameters from the scary internet, only allow the white list through.
def colour_params
    params.require( :colour ).permit( :name, :hex_value, :white_on_black )
end


end
