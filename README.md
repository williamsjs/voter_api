# Voter API

## Models/Controllers
1. Vote
  * belongs to Voter and Candidate models
  * create action allows for creation of new vote
  * destroy action allows for deletion of vote in db
  * index action lists all votes in db
2. Voter
  * allowed one vote through vote validation
  * create action allows for creation of voter
  * index lists voters
  * update action allows for user values to be changed
  * show action takes in an id and outputs appropriate voter
3. Candidate
  * created with name, party, hometown, and district values
  * index action lists candidates
  * show action lists candidates by id
