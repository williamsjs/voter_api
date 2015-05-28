# Voter API

##Info

#####Voter API is an API that allows for the simulation of an election of any type.  It takes in simple values, such as votes, voters, and candidates; and organizes the values into a useable format.

## Documentation ##
1. Vote
  * belongs to Voter and Candidate models
  * create action allows for creation of new vote
  * destroy action allows for deletion of vote in db
  * index action lists all votes in db (example below)
  >localhost:3000/votes/index ##lists votes
2. Voter
  * allowed one vote through vote validation
  * create action allows for creation of voter
  * index lists voters
  * update action allows for user values to be changed
  * show action takes in an id and outputs appropriate voter (example below)
  >localhost:3000/voters/show?id=1 ##shows specific voter
3. Candidate
  * created with name, party, hometown, and district values
  * index action lists candidates
  * show action lists candidates by id
