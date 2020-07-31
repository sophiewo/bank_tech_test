# Bank tech test

## Specification:

### Requirements
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything)

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## To use this program:

* Clone/fork this repo
* Run `bundle install` to get dependecies
* Run `rspec` to ensure programme is working
* Run `IRB` or REPL of your choice
* Require the file  `require './lib/user.rb' `
* Commands:
```
my_account = User.new
my_account.show_balance
my_account.deposit(amount)
my_account.withdraw(amount)
my_account.print_statement
```
## How I built this program:

- Ruby using OO design principles
- TDD 
 - Rspec
 - Rubocop
 - SimpleCov
- Diagram (see below)

## Class Relationship Diagrams

![Initial Class Diagram](https://github.com/sophiewo/bank_tech_test/blob/master/assets/ClassDiagram_1.png)

![Final Class Diagram](https://github.com/sophiewo/bank_tech_test/blob/master/assets/ClassDiagram_2.png)
