class TestsController < ApplicationController
    def create
        @test = Test.new(params[:client])
        if @client.save
            redirect_to @client
        else
            puts "hello"
        end
    end    
end