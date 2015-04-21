require_relative 'university.rb'

describe "Part 1b: Your Array of Universities" do
  # You'll need to fill in this `let` block below.

  # There should be four universities in your `universities` array.

  # | name       | applied   | rejected | accepted |
  # |------------|-----------|----------|----------|
  # | Purdue     | 170       | 90       | 80       |
  # | Indiana    | 300       | 135      | 165      |
  # | Notre Dame | 500       | 220      | 230      |
  # | Toledo     | 404       | 180      | 224      |

  let(:university_hash) {[
    {name: "Purdue", application_stats: {'rejected' => 90, 'accepted' => 80, 'applied' => 170}},
    {name: "Indiana", application_stats: {'rejected' => 135, 'accepted' =>165, 'applied' => 300}},
    {name: "Notre Dame", application_stats: {'rejected' => 220, 'accepted' =>230, 'applied' => 500}},
    {name: "Toledo", application_stats: {'rejected' => 180, 'accepted' =>224, 'applied' => 404}}
    ]}

let(:universities) {university_hash.map {|university_entry| University.new(university_entry)}}

  it 'should have a length of four' do
    expect(universities.length).to eq(4)
  end

  #What's a good name for this test? Give it one.
  it 'is an instance of University' do
    expect(universities.all?{ |university| university.class == University }).to be(true)
  end

  #Give a good name for this test too!
  it 'university stats are truthy and greater than 0' do
    stats = universities.map(&:application_stats).map(&:values).flatten.all? { |stat| stat > 0 }
    expect(stats).to be(true)
  end
end
