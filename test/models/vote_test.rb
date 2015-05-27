require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  def test_assert_vote_has_two_values
    scott = Voter.create(name: "Scott", party: "Libertarian")
    null_vote = Vote.create(voter_id: scott.id)
    jim = Candidate.create(name: "Jim", hometown: "Lexington, MS", district: "four", party: "Democrat")
    scotts_vote = Vote.create(voter_id: scott.id, candidate_id: jim.id)

    assert scotts_vote.save
    refute null_vote.save
  end

  def test_voter_has_one_vote
    scott = Voter.create(name: "Scott", party: "Democrat")
    jim = Candidate.create(name: "Jim", hometown: "Lexington, MS", district: "four", party: "Democrat")
    neil = Candidate.create(name: "Neal", hometown: "Lexington, MS", district: "four", party: "Republican")
    scotts_vote = Vote.create(voter_id: scott.id, candidate_id: jim.id)
    null_vote = Vote.create(voter_id: scott.id, candidate_id: neil.id)

    assert scotts_vote.save
    refute null_vote.save
  end
end
