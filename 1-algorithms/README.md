## Algorithms

### Timing
This exercise should take you 30 minutes or less. Ask for help if anything is unclear!  If you have spent more than 30 minutes and have already gotten help, consider going on to the next question.

### Introduction
In this challenge you will work with a collection of simple University objects. **Start with the code provided** in `university.rb`.

Each section has a corresponding RSpec test. You will need to write code to make the specs pass.

You will need to fill in some `let` blocks in each spec, but **do not modify the expectations** themselves.

Each spec has comments with more information. _Make sure you read the comments._

#### Part 1a — A University named Purdue

Flesh out `university.rb` so that the tests in `university_part_1a_spec.rb` all pass. _You'll need to edit the spec file too._

Each University will have a `name` and a structure to record the status of applications to that univeristy, called `applications_stats`. For example, here are the application stats for Purdue:

| status    |           |
|-----------|-----------|
| applied   | 170       |
| rejected  | 90        |
| accepted  | 80        |

#### Part 1b — Your Array of Universities

After Part 1a is passing, move on to `university_part_1b_spec.rb`. You'll need to edit the spec file to get it to pass. You'll want four test subjects in an array, more details are in the comments of the spec.

When tests in `university_part_1b_spec.rb` are green, move on to Part 2.

Some of the specs in `university_part_1b_spec.rb` are asking you to provide a better name, so you'll need to add descriptive names for those tests.

#### Part 2 — Acceptance Rate

You'll need to expand your `University` class to get the tests in `university_part_2_spec.rb` to pass. To calculate the acceptance rate as a percentage you'll need to know about something about integer division in Ruby, here's the gist:

Dividing two integers in Ruby results in an integer, rounded down:
```ruby
irb(main):002:0> 30/16
=> 1
```

If you want the result as a decimal, you'll need to convert at least one of the numbers to a float with `.to_f`:
```ruby
irb(main):003:0> 30/16.to_f
=> 1.875
```

Look at the spec and its comments for more details.

#### Part 3 — Low Acceptance Rate Count

Somebody has called for a count of the universities with an acceptance rate of less than 50 percent. Write a method `low_acceptance_count` that returns a an integer of the count of universities with an acceptance rate of less than 50.  When you are done all tests in `university_part_3_spec.rb` should pass.

Implement this method without using fancy enumerable methods.

###Questions?
First refer to each spec file for extra comments and instructions.

More questions?  _Don't hesitate to ask for help!_
