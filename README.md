# Tickets, Please!

This repository requires and has been tested on Ruby v2.7.4 and is based on Rails 5.2.8.

RSpec and Shoulda-Matchers have been installed and set up.

## Setup

1. fork this repo
2. clone your fork
3. `git clone <repo_name>`
4. `cd <repo_name>`
5. `bundle install`

When you run `bundle exec rspec` you should have 2 passing tests.

## Instructions

* Work on this assessment independently. DO NOT discuss with anyone.
* You are allowed to use any references including notes, Google, lesson plans, etc.
* Read each story carefully before you start working.
* Commit Frequently, about every 15 - 30 minutes
* Push your code to your fork **once the time is up (not before!)**

## Submission

**Once the time for the assessment is up**, push your code to your fork and create a pull request to the `turingschool-examples` repository. Include the following:

* Your Name
* A reflection on how you felt you did with this challenge and what story you got through

## Requirements

* TDD all new work
* model methods and relationships must be fully tested.

## Not Required

* No visual styling is required or expected
* You do not need to test for or create any model validations.

## Overview

We are creating an application to track departments, employees and tickets.

* Departments have a name and a floor.
	* ex. name: ‘IT’, floor: ‘Basement’
* Employees have a name, and level
	* ex. name: ‘Christina Aguilera’, level: 2
* Tickets have a subject, age (integer), and open (boolean) attributes
	* ex. subject: ‘printers broken’, age: 5, open: true

* Departments have many Employees
* Employees belong to a Department
* Employees have many Tickets
* Tickets can belong to many Employees

Some of the initial model set up and testing has been done for you.

## User Stories
```
Story 1
Department Index

As a user,
When I visit the Department index page,
I see each department's name and floor
And underneath each department, I can see the names of all of its employees
```
```
Story 2
Employee Show

As a user,
When I visit the Employee show page,
I see the employee's name and department name,
and I see a list of the employee's tickets including the ticket subject and age,
And I see that this list is ordered from oldest to youngest, 
And I see that this list only includes open tickets
```
```
Story 3

As a user,
When I visit the employee show page,
I do not see any open tickets listed that are not assigned to the employee
and I see a form to add a ticket to this employee
When I fill in the form with the id of an open ticket that already exists in the database
and I click submit
Then I am redirected back to that employee's show page
and I see the ticket's subject now listed
(you do not have to test for sad path, for example if the id does not match an existing ticket)
```
## Extension
```
Extension
Top Employees

As a user,
When I visit the department index page,
Then I see a section for "Top Employees",
And in that section I see the names of the 3 employees
who have the highest count of closed tickets, 
and next to the employee name I see their count of closed tickets and their department
```
