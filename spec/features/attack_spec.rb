require './app.rb'

RSpec.feature 'Attack', type: :feature do
  # scenario 'player 1 can attack player 2' do
  #   sign_in_and_play
  #   click_button 'Attack'
  #   expect(page).to have_content('eva attacked andrew')
  # end

  scenario 'player 1 does damage to player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'eva HP: 100 attacked andrew HP: 90'
  end
end
