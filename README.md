# A little background information

This code exercise is intended to evaluate your software engineering skills but 
also give you an introduction into the types of problems we solve at KnowInk.
Your solution will be evaluated based on the ability to produce intended
results, cleanliness, adherence to best practices, maintainability, and
readability. Write this code as if you were submitting production quality code
for a code review process.

# The challenge

We, at KnowInk, provide a solution for election officials to efficiently handle
voter check-ins.  When a voter arrives at a polling place, they are verified
before being given a ballot.  Oftentimes, this involves poll workers finding the
voter's name on a spreadsheet and determining if there are any changes needed to
the voter's name, address etc.  In some cases, the voter's information is not
available for validation to the poll worker.  In these situations, the voter's
ballot is considered "provisional".  It will be counted, but is marked as
needing further validation.

Your challenge, should you choose to accept it, is to build out a small app 
that reflects the above workflow.

You will need precincts, elections, poll workers and voters.  Keep in mind that
a voter from a precinct will likely vote in multiple elections.  Poll workers,
similarly, may work in multiple elections and different precincts. A poll worker 
will need to be able to view (for verification) the voter's name and address.  
They'll also need to be able to edit the voter's information.  Doing so will mark 
that voter as provisional.

You'll also need to create an restful api that takes the election id as a 
parameter and returns the name and address of all the voters registered in that
election and allows for filtering by the provisional flag.

Spend the most time getting the core relationships set up and tested correctly
versus time on visual styling and stylesheets. Please do take a few minutes and 
answer the questions found in QUESTIONS.md.

## Getting Started

Clone **this** repo, please DO NOT make a fork of it.

```bash
$ git clone https://github.com/knowink-dev/epulse-dev-challenge.git
```

The project has docker and bootstrap included, but using them is not required.

## Getting Finished

Ensure you've answered the questions found in QUESTIONS.md.

**Please DO NOT push your work to a public fork on GitHub!**

Using the command below, create a git bundle of your changes and send it to ruby-code-test@knowink.com.

```bash
$ git bundle create your_name.bundle main
```

Above all, enjoy yourself!