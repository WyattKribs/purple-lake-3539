class Employee < ApplicationRecord
  belongs_to :department
  has_many :employee_tickets
  has_many :tickets, through: :employee_tickets

  def open_tickets
    tickets.where("open = true")
    .order(age: :desc)
  end
end
