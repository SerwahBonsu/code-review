require_relative 'imdb_clone.rb'

describe Actor do
  let(:actor) {
    Actor.new({:first_name => "Brad",
               :last_name => "Pitt",
               :birth_name => "William Bradley Pitt",
               :photo_name => "oscars",
               :photo_url => "http://awesome.com/brad" })
  }

  it 'should have a first name' do
    expect(actor.first_name).to eq("Brad")
  end

  it 'should have a last name' do
    expect(actor.last_name).to eq("Pitt")
  end

  it 'should have a birth_name' do
    expect(actor.birth_name).to eq("William Bradley Pitt")
  end

  it 'should have a photo' do
    #Write a test to show that Actor#photo returns a Photo
    #Remember to change "pending" to "it" when you're ready to run this test
    expect(actor.photo).to match(Object)
  end

  it "the actor's photo should have a name" do
    expect(actor.photo.name).to eq("oscars")
  end

  it "the actor's photo should have a url" do
    expect(actor.photo.url).to eq("http://awesome.com/brad")
  end
end

describe Movie do
  let(:movie) {
    Movie.new({ :name => "Fight Club",
                :synopsis => "An insomniac office worker looking for a way to change his life crosses paths with a devil-may-care soap maker and they form an underground fight club that evolves into something much, much more...",
                :release_year => "1999",
                :photo_name => "poster",
                :photo_url => "http://sweet.com/fight_club" })
  }

  it 'should have a name' do
    expect(movie.name).to eq("Fight Club")
  end

  it 'should have a synopsis' do
        expect(movie.synopsis).to eq("An insomniac office worker looking for a way to change his life crosses paths with a devil-may-care soap maker and they form an underground fight club that evolves into something much, much more...")
  end

  it 'should have a release year' do
    expect(movie.release_year).to eq("1999")
  end

   it 'should have a photo' do
    #Write a test to show that Movie#photo returns a Photo
    #Remember to change "pending" to "it" when you're ready to run this test
    expect(movie.photo).to match(Object)
  end

  it "the movie's photo should have a name" do
    expect(movie.photo.name).to eq("poster")
  end

  it "the movie's photo should have a url" do
    expect(movie.photo.url).to eq("http://sweet.com/fight_club")
  end
end
