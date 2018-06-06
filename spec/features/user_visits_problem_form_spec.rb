require 'rails_helper'

RSpec.describe 'The problem form' do

  it 'should visit problem form from when problem is selected' do
    visit '/support'
    choose 'select_subject_problem'
    click_button 'Continue'
    expect(page).to have_content('Report a problem')
  end

end
