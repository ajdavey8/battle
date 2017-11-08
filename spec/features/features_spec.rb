require './app.rb'

RSpec.feature 'show player names with HP', type: :feature do
  scenario 'entered player names with HP' do
    sign_in_and_play
    expect(page).to have_content('eva HP: 100 vs andrew HP: 100')
  end
end
