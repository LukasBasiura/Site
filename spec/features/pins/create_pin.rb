require 'spec_helper'

describe "Creating new pin" do

  it 'redirects to the index page' do

    visit "/pins"
    click_link "+ Add image"

    expect(page).to have_content("New Pin")
  end

end