require 'rails_helper'

describe Artist do
  it { should have_and_belong_to_many :albums }
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(100) }

  it("titleizes the name of an artist") do
    artist = Artist.create({name: "giant steps"})
    expect(artist.name()).to(eq("Giant Steps"))
  end
end