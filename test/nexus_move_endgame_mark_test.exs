defmodule NexusMoveEndgameMarkTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 92, capacity: 87, latency: 17, risk: 24, weight: 13}
    assert NexusMoveEndgameMark.score(signal_case_1) == 122
    assert NexusMoveEndgameMark.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 99, capacity: 71, latency: 8, risk: 13, weight: 10}
    assert NexusMoveEndgameMark.score(signal_case_2) == 202
    assert NexusMoveEndgameMark.classify(signal_case_2) == "accept"
    signal_case_3 = %{demand: 85, capacity: 78, latency: 26, risk: 6, weight: 9}
    assert NexusMoveEndgameMark.score(signal_case_3) == 141
    assert NexusMoveEndgameMark.classify(signal_case_3) == "review"
  end
end
