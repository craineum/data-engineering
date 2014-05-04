# Stream of consiousness:
I will be using things that I am already familiar with.  Usually would research before moving forward.
Will note decision points as I go.
Will commit red-green conditions so you can get a flow of my work.
Will breakdown feature into smaller stories outlined below.
Breakdowns will not break previous functionality while providing some testable thing.

## Story: Receive subsidiary sales file
1. Feature testing with capybara, if interfacing with QA or Product Owner/Manager would possibly use Cucumber.
1. I typically don't test controllers as there should be no business logic there, features test the combining aspects of them.
1. This first story is probably a bit smaller than would typically do, but just want to show some process.
Tasks:
1. Create app
1. Create route, controller, views
1. Add upload form to view
1. Display success message

### Would usually verify good and bad data here, but assignment is that we can assume it is good.

## Story: Process & store
1. Test with DB until things become too slow, then will start mocking (so not in this small app)
1. I put in values that I expect in my test, not derived from input (having the test check for eq 4 instead of looking at the file)
Tasks:
1. Create migration & model
1. Read file
1. Parse & compile data
1. Store in DB
1. Link controller to model
1. Return success/failure message
