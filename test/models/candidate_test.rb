require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  def test_candidate_voter_association
    bob = Candidate.create(name: "Bob", hometown: "stansberg, MS", party: "Democrat", district: "five")
    bryan = Voter.create(name: "Bryan", party: "Republican")
    bryans_vote = Vote.create(voter_id: bryan.id, candidate_id: bob.id)

    assert_equal [bryans_vote], bob.votes
  end

  def test_candidate_must_have_all_values
    bob = Candidate.create(name: "Bob", hometown: "Stansberg, MS")
    rob = Candidate.create(name: "Rob", hometown: "Fredricksburg, MS", party: "Democrat", district: "five")

    assert rob.save
    refute bob.save
  end

  def test_voter_linked_to_candidate
    rob = Candidate.create(name: "Rob", hometown: "Fredricksburg, MS", party: "Democrat", district: "five")
    bryan = Voter.create(name: "Bryan", party: "Republican")
    bryans_vote = Vote.create(voter_id: bryan.id, candidate_id: rob.id)

    assert_equal [bryan], rob.voters
  end

end
