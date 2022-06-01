require 'rails_helper'

describe "the delete an album process" do
  it "deletes an album" do
    album = Album.create({name: "Giant Steps"})
    visit albums_path
    click_on 'Giant Steps'
    click_on 'Delete'
    # page.accept_confirm do
    #   click_on "OK"
    # end
    
    expect(page).to have_no_content 'Giant Steps'
  end
end