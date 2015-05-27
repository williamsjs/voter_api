require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  def test_voter_must_have_value
    scott = Voter.create(name: "Scott", party: "Democrat")
    joseph = Voter.create(name: "Joseph")

    assert scott.save
    refute joseph.save
  end

  def test_voter_linked_to_vote
    scott = Voter.create(name: "Scott", party: "Democrat")
    joseph = Voter.create(name: "Joseph", party: "Republican")
    jim = Candidate.create(name: "Jim", hometown: "Lexington, MS", district: "four", party: "Democrat")
    scotts_vote = Vote.create(voter_id: scott.id, candidate_id: jim.id)
    josephs_vote = Vote.create(voter_id: joseph.id, candidate_id: jim.id)

    assert_equal scotts_vote, scott.vote
    assert_equal josephs_vote, joseph.vote
  end
end
