defmodule NexusMoveEndgameMark.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 70, slack: 36, drag: 28, confidence: 65}
    assert NexusMoveEndgameMark.DomainReview.score(item) == 157
    assert NexusMoveEndgameMark.DomainReview.lane(item) == "ship"
  end
end
