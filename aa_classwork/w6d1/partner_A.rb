

# What are the disadvantages of 
# adding an index to a table column in a database?
#Indices do have a cost, because when inserting/writing, indices 

# *Answer**: Indices do have a cost. 
# They make writes (`INSERT`s, `DELETE`s, and
# `UPDATE`s) a little more taxing because the 
# index table must also be updated.


## Question Two

# Given the following table write all the `belongs_to` and `has_many` associations
# for models based on the below table (`User`, `Enrollment`, and `Course`)

# ```ruby

# # == Schema Information
# #
# # Table name: users
# #
# #  id   :integer                not null, primary key
# #  name :string                 not null
1.

has_many :enrollments,
    primary_key: :id
    foreign_key: :student_id,
    class_name: :Enrollment

has_many :courses,
    primary_key: :id,
    foreign_key: :professor_id,
    class_name: :Course,
    optional: true


# # Table name: enrollments - BRIDGE TABLE
# #
# #  id   :integer                not null, primary key
# #  course_id :integer           not null
# #  student_id :integer          not null
2. 
belongs_to :users,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :User

belongs_to :courses,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Course


# # Table name: courses
# #
# #  id   :integer                not null, primary key
# #  course_name :string          not null
# #  professor_id :integer        not null
# #  prereq_course_id :integer    not null

3.
belongs_to :professors,
    primary_key: :id,
    foreign_key: :professor_id,
    class_name: :User

belongs_to :prereqs,
    primary_key: :id,
    foreign_key: :prereq_course_id,
    class_name: :Course

has_many :enrollments
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Enrollment


## Question Three

Given all possible SQL commands order by order of query execution. (SELECT,
DISTINCT, FROM, JOIN, WHERE, GROUP BY, HAVING, LIMIT/OFFSET, ORDER).

DISTINCT, FROM, JOIN, WHERE, GROUP BY, HAVING, ORDER, LIMIT/OFFSET, SELECT

1. FROM and JOINs
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. DISTINCT
7. ORDER BY
8. LIMIT / OFFSET


## Question Four

Given the following table:

ruby
# == Schema Information
#
# Table name: nobels
#
#  yr          :integer
#  subject     :string
#  winner      :string


Write the following SQL Query:

1.  In which years was the Physics prize awarded, but no Chemistry prize?

SELECT 
  DISTINCT yr
FROM 
  nobels
WHERE 
  yr NOT IN (
      SELECT 
        yr 
      FROM 
        nobels 
      WHERE 
        subject != 'Chemistry'
    )


#### Solution

SELECT DISTINCT
    yr
FROM
    nobels
WHERE
    (subject = 'Physics' AND yr NOT IN (
    SELECT
        yr
    FROM
        nobels
    WHERE
        subject = 'Chemistry'
    ))


## Question Five

What is the purpose of a database migration?

**Answer**: A migration is a file containing Ruby code that describes a set of
changes to be applied to a database. It may create or drop tables as well as add
or remove columns from a table.


## Question Six

What is the difference between Database Constraints and Active Record
Validations?

**Answer**: **Validations** are defined inside **models**. Model-level
validations live in the Rails world. Since we write them in Ruby, they are very
flexible, database agnostic, and convenient to test, maintain and reuse.
Validations are run whenever we `save` or `update` a model. **Constraints** are
defined inside **migrations** and operate on the database. Constraints throw
hard nasty errors whenever something that shouldnt be inputted into our
database tries to get in there.


## Question Seven

Given the following table write all the `belongs_to` and `has_many` associations
for models based on the below table (`User`, `Game`, and `Score`)

ruby
# == Schema Information
#
# Table name: user
#
#  id   :integer          not null, primary key
#  name :string           not null

has_many :scores,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Score

has_many :games,
    primary_key: :id,
    foreign_key: :game_maker_id,
    class_name: :Game


# Table name: score
#
#  id   :integer           not null, primary key
#  number :integer         not null
#  user_id :integer        not null
#  game_id :integer        not null

belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

belongs_to :game,
    primary_key: :id,
    foreign_key: :game_id,
    class_name: :Game

# Table name: game
#
#  id   :integer           not null, primary key
#  name :string            not null
#  game_maker_id :integer  not null

belongs_to :game_maker,
    primary_key: :id,
    foreign_key: :game_maker_id,
    class_name: :Uwer

has_many :scores,
    primary_key: :id,
    foreign_key: :game_id,
    class_name: :Score

