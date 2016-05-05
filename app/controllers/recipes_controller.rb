class RecipesController < ApplicationController
    
    def index
        
        #check if a request parameter search was passed in.
        @search_term = params[:looking_for] || 'chocolate'
        @recipes = Recipe.for(@search_term)
    end
    
end
