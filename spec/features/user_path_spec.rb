feature "user path" do
  scenario "user can visit home page" do
    visit "/"
    expect(page).to have_content "Cageflix Netflix for Nic Cage movies"

    click_on "Add Movie"

    fill_in "Name", :with => "The Wickerman"
    fill_in "Year", :with => "2006"
    fill_in "Synopsis", :with => "Awesome Tail"

    click_on "Create Movie"


  end
end