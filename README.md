## Background

The Order Of The Phoenix from the Harry Potter Book Series was a secret society founded by Albus Dumbledore to oppose Lord Voldemort and his Death Eaters. The original Order was created in the 1970s. ... The Order disbanded but was reconvened in 1995 after Harry Potter informed Dumbledore of Lord Voldemort's return.

We will be searching the Harry Potter API by Hogwarts house (e.g Griffindor, Hufflepuff, Ravenclaw or Slytherin) in order to retrieve a list of the Order of the Phoenix members that belong to that Hogwarts house.

## Setup

* Clone this repo
* `bundle install`
* `bundle exec figaro install`
* `rake db:{create,migrate}`
* `rails s`

## Assignment

We will be using the [Potter Api](https://www.potterapi.com). You will need to sign up for an api key.

Complete the following user story. Be sure to TDD all of your work.

```
As a user,
When I visit "/"
And I Select “Gryffindor” from the select field
(Note: Use the existing select field)
And I click "Search For Members“
Then I should be on page “/search”
Then I should see the total number of the order of the phoenix members that belong to Gryffindor. (i.e. 21)
And I should see a list with the detailed information for the 21 members of the Order of the Phoenix for house Gryffindor.

And for each of the members I should see:
- The name of the member
- The members role (if it exists)
- The house the member belongs to
- The Patronus of the member (if it exists)
```
