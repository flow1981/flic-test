class TestsController < ApplicationController
    def create
        @test = Test.new(name: params[:name])
        if @test.save
            puts "successfully created and saved #{@test.id}"
        else
            puts "oh no, couldn't create and save"
        end
    end    
end