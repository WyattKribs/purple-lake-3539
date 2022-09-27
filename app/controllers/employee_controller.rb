class EmployeeController < ApplicationController

  def show
    @employee = Employee.find(params[:id])
    @department = Department.all
    @tickets = @employee.open_tickets
    
  end

end
