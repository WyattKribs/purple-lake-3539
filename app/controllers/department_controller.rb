class DepartmentController < ApplicationController

  def index
    @departments = Department.all
    @employees = Employee.all
  end

end
