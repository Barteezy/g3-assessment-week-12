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
  scenario "user cannot enter wrong info" do
    visit "/"
    click_on "Add Movie"

    click_on "Create Movie"

    expect(page).to have_content "Name can't be blank"
    end
end