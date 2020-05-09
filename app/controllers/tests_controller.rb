class TestsController < ApplicationController

    def index
        tests = Test.all
        if tests
            render json: tests
        else
            render json: {error: 'There are no tests.'}, status: 404
        end
    end

    def show
       test = Test.find_by(id: params[:id])
       if test
           render json: test
       else
           render json: {error: "Test with ID #{params[:id]} cannot be found."}, status: 404
       end
    end

    def create
        test = Test.new(name: params[:name])
        if test.save
          render json: test
        else
          render json: {error: "Error creating a new test thing."}, status: 404
        end
    end    
end