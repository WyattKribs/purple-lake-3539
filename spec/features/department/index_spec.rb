require 'rails_helper'

RSpec.describe 'department index page' do

  it 'lists each department' do
    department1 = Department.create!(name: 'receiving', floor: '1st floor')
    department2 = Department.create!(name: 'sales', floor: '2nd floor')

    visit department_index_path

    expect(page).to have_content(department1.name)
    expect(page).to have_content(department1.floor)
    expect(page).to have_content(department2.name)
    expect(page).to have_content(department2.floor)

  end

  it 'lists employees under each department' do
    department1 = Department.create!(name: 'receiving', floor: '1st floor')
    department2 = Department.create!(name: 'sales', floor: '2nd floor')
    employee1 = Employee.create!(name: 'Gunther Guyman', level: 5, department_id: department1.id)
    employee2 = Employee.create!(name: 'Harry Henry', level: 2, department_id: department1.id)
    employee3 = Employee.create!(name: 'Jillian Jewels', level: 6, department_id: department2.id)



    visit department_index_path

    expect(page).to have_content(employee1.name)
    expect(page).to have_content(employee2.name)
    expect(page).to have_content(employee3.name)
  end

end
