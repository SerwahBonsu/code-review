require_relative 'university.rb'

describe "Part 1a: A University named Purdue" do
  # Your University should be named `"Purdue" and have the following application stats:

  # | status    |           |
  # |-----------|-----------|
  # | applied   | 170       |
  # | rejected  | 90        |
  # | accepted  | 80        |

  # You'll need to fill in this `let` block:
  let(:university) {University.new(name: "Purdue", application_stats: {'rejected' => 90, 'accepted' =>80, 'applied' => 170})}
  it 'should have a name' do
    expect(university.name).to eq("Purdue")
  end

  it 'should have application stats for 3 different statuses' do
    expect(university.application_stats.length).to eq(3)
    expect(university.application_stats['rejected']).to eq(90)
    expect(university.application_stats['accepted']).to be < university.application_stats['rejected']
  end
end
