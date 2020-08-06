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
my_account.user_balance
my_account.user_deposit(amount)
my_account.user_withdraw(amount)
my_account.print_user_statement
```

## Example of running app

![IRB Example of running APP](https://github.com/sophiewo/bank_tech_test/blob/master/assets/IRB_RunningApp.png)

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


# Here is my feedback:
## Display
Your display of the statement should be an exact match of the acceptance criteria.
Can you change your code so this is met please?

Currently:

date || credit || debit || balance
06/08/2020 ||10|| || 10
06/08/2020 || || 5 || 5

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

## SRP
statement_formatter in your Statement class could be extracted a little for better SRP

## Separation of Concerns/OO design
Your user class is basically just delegating to the Transaction class continually. For me this looks like “feature envy” - how could you fix this?
       https://refactoring.guru/smells/feature-envy

## Tests/Mocking
You should be isolating your tests using doubles
