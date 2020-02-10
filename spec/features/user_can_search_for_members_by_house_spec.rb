require 'rails_helper'

feature 'User can search members by house' do
  scenario 'selecting house returns member count and specified attributes' do

    visit '/'

    select 'Gryffindor', from: :house

    click_button 'Search For Members'

    expect(current_path).to eq('/search')

    expect(page).to have_content('21 for Gryffindor')

    expect(page).to have_css('.member', count: 21)

    within('.member') do
      expect(page).to have_css('.name')
      expect(page).to have_css('.role')
      expect(page).to have_css('.house')
      expect(page).to have_css('.patronus')
    end
  end
end

# As a user,
# When I visit "/"
# And I Select “Gryffindor” from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see a total of the number of members for that house. (21 for Gryffindor)
# And I should see a list of the 21 members of the Order of the Phoenix for house Gryffindor.
#
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
