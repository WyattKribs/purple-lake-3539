require 'rails_helper'

RSpec.describe 'employee show page' do

  it 'has the employee name and department' do
    department = Department.create!(name: 'receiving', floor: '1st floor')
    employee = Employee.create!(name: 'Gunther Guyman', level: 5, department_id: department.id)

    visit employee_path(employee.id)

    expect(page).to have_content(employee.name)
    expect(page).to have_content(department.name)
  end

  it 'lists the employee tickets' do
    department = Department.create!(name: 'receiving', floor: '1st floor')
    employee = Employee.create!(name: 'Gunther Guyman', level: 5, department_id: department.id)
    ticket1 = Ticket.create!(subject: 'printer', age: 2, open: true)
    ticket2 = Ticket.create!(subject: 'mouse', age: 1, open: true)
    ticket3 = Ticket.create!(subject: 'monitor', age: 3, open: false)
    emptick1 = EmployeeTicket.create!(employee_id: employee.id, ticket_id: ticket1.id)
    emptick2 = EmployeeTicket.create!(employee_id: employee.id, ticket_id: ticket2.id)



    visit employee_path(employee.id)

    expect(page).to have_content('printer')
    expect(page).to have_content('mouse')
    expect(page).to_not have_content('monitor')
  end

  it 'only lists tickets assigned to the employee' do
    department = Department.create!(name: 'receiving', floor: '1st floor')
    employee1 = Employee.create!(name: 'Gunther Guyman', level: 5, department_id: department.id)
    employee2 = Employee.create!(name: 'Janni Wermak', level: 5, department_id: department.id)
    ticket1 = Ticket.create!(subject: 'printer', age: 2, open: true)
    ticket2 = Ticket.create!(subject: 'mouse', age: 1, open: true)
    ticket3 = Ticket.create!(subject: 'monitor', age: 3, open: false)
    ticket4 = Ticket.create!(subject: 'monitor', age: 3, open: true)
    emptick1 = EmployeeTicket.create!(employee_id: employee1.id, ticket_id: ticket1.id)
    emptick2 = EmployeeTicket.create!(employee_id: employee1.id, ticket_id: ticket2.id)
    emptick3 = EmployeeTicket.create!(employee_id: employee1.id, ticket_id: ticket3.id)
    emptick4 = EmployeeTicket.create!(employee_id: employee2.id, ticket_id: ticket4.id)

    visit employee_path(employee1.id)

    expect(page).to have_content('printer')
    expect(page).to have_content('mouse')
    expect(page).to_not have_content('monitor')
  end
end
