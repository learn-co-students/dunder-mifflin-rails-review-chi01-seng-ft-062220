class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update]
    def index
        @employees = Employee.all
    end

    def show
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)
        @employee.set_image
        if @employee.save
            redirect_to @employee
        else
            render :new
        end
    end

    def edit
    end

    def update
        @employee.update(employee_params)
        if @employee.valid?
            redirect_to @employee
        else
            render :edit
        end
    end


    private

    def find_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end
end
