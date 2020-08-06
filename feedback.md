# Here is my feedback:
## Display
Your display of the statement should be an exact match of the acceptance criteria.
Can you change your code so this is met please?

## SRP
statement_formatter in your Statement class could be extracted a little for better SRP

## Separation of Concerns/OO design
Your user class is basically just delegating to the Transaction class continually. For me this looks like “feature envy” - how could you fix this?
       https://refactoring.guru/smells/feature-envy

## Tests/Mocking
You should be isolating your tests using doubles