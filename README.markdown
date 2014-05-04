# Stream of consiousness:
* I will be using things that I am already familiar with.  Usually would research before moving forward.
* Will note decision points as I go.
* Will commit red-green conditions so you can get a flow of my work.
* Will breakdown feature into smaller stories outlined below.
* Breakdowns will not break previous functionality while providing some testable thing.

## Story: Receive subsidiary sales file
* Feature testing with capybara, if interfacing with QA or Product Owner/Manager would possibly use Cucumber.
* I typically don't test controllers as there should be no business logic there, features test the combining aspects of them.
* This first story is probably a bit smaller than would typically do, but just want to show some process.
### Tasks:
1. Create app
1. Create route, controller, views
1. Add upload form to view
1. Display success message

## Story: Process & store
* Test with DB until things become too slow, then will start mocking (so not in this small app)
* I put in values that I expect in my test, not derived from input (having the test check for eq 4 instead of looking at the file)
* Model method process_upload is at the limit of what I would like to see for functionality.  Would refactor if more functionality needed.
### Tasks:
1. Create migration & model
1. Read file
1. Parse & compile data
1. Store in DB
1. Link controller to model
1. Return success/failure message

## Story: Add total gross revenue to output
* Refactor process_upload as too much functionality is happening inside of it.
* See flaw if they upload the same data more than once.  Would be another story to fix that functionality.
### Tasks:
1. Add total return to model
1. Display total in view

# Recap
This took me about 2 hours to do.  Here are some of the stories I thought of along the way that could improve the feature.

* **Story:** Verify data file before insert
* **Story:** Make sure data is not being duplicated
* **Story:** Background task to process data with push feedback for larger data sets

Thank you for taking the time to review my efforts!

Kevin
:)
