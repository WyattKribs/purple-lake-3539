require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe 'relationships' do
    it { should belong_to :department }
    it { should have_many :employee_tickets }
    it { should have_many(:tickets).through(:employee_tickets) }
  end
  describe 'model tests' do
    it 'can list open tickets' do
      department = Department.create!(name: 'receiving', floor: '1st floor')
      employee1 = Employee.create!(name: 'Gunther Guyman', level: 5, department_id: department.id)
      employee2 = Employee.create!(name: 'Janni Wermak', level: 5, department_id: department.id)
      ticket1 = Ticket.create!(subject: 'printer', age: 2, open: true)
      ticket2 = Ticket.create!(subject: 'mouse', age: 3, open: true)
      ticket3 = Ticket.create!(subject: 'monitor', age: 3, open: false)
      ticket4 = Ticket.create!(subject: 'monitor', age: 3, open: true)
      emptick1 = EmployeeTicket.create!(employee_id: employee1.id, ticket_id: ticket1.id)
      emptick2 = EmployeeTicket.create!(employee_id: employee1.id, ticket_id: ticket2.id)
      emptick3 = EmployeeTicket.create!(employee_id: employee1.id, ticket_id: ticket3.id)
      emptick4 = EmployeeTicket.create!(employee_id: employee2.id, ticket_id: ticket4.id)

      expect(employee1.open_tickets).to eq([ticket2, ticket1])
    end
  end
end
