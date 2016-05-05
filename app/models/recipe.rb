ENV['FOOD2FORK_KEY'] ='9683f89286eb712c43ec6755c93871b0'
#ENV['FOOD2FORK_SERVER_AND_PORT'] = ''
require 'httparty'
require 'pp'

class Recipe < ActiveRecord::Base

    class Recipe
            
        include HTTParty
        #take a keyword to query
        #key_value = ENV['FOOD2FORK_KEY']
        #hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || ’www.food2fork.com’
        base_uri "http://#{hostport}/api"
        default_params key: ENV['FOOD2FORK_KEY'], q: "search"
        format :json
            
            def self.for term
                get("/search", query: {q: keyword})["recipes"]
            end
    end
end
