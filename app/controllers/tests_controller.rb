class TestsController < ApplicationController

    def index
    end

    def show
       @test = Test.find(params[:id])
    end

    def create
        @test = Test.new(name: params[:name])
        if @test.save
            puts "successfully created and saved #{@test.id}"
        else
            puts "oh no, couldn't create and save"
        end
    end    
end