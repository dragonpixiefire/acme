class CartsController < ApplicationController


    def index
    end

    def add()
        # binding.pry
        
        redirect_to(product_path(params[:product_id]), only_path: true)
    end

    def remove()
        redirect_to(product_path(params[:product_id]), only_path: true)
    end


end