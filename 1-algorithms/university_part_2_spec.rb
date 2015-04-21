require_relative 'university.rb'

describe "Part 2: Acceptance Rate" do
  # You should add one method to your class for Part 2

  # Write an `acceptance_rate` method that returns the percentage of accepted students at a university.
  # This number should be an integer representing the percent. The total number of applications is the 'applied' count.

  # We'll be taking a look at our old friend "Purdue" again with the same data in part 1a.
  # but you'll still need to fill in this `let` block:
  let(:university) {University.new(name: "Purdue", application_stats: {'rejected' => 90, 'accepted' =>80, 'applied' => 170})}

  it 'should have an acceptance_rate' do
    expect(university.acceptance_rate).to eq(47)
  end
end

