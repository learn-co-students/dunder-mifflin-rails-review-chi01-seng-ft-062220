class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def sorted
        @dogs = Dog.all
        @ordered = @dogs.sort_by{|dog| -dog.employees.count}
        render :sorted_dogs
    end
end
