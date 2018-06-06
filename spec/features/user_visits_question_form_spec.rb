require 'rails_helper'

RSpec.describe 'The question form' do

  it 'should visit question form from when question is selected' do
    visit '/support'
    choose 'select_subject_question'
    click_button 'Continue'
    expect(page).to have_content('Ask a question or give feedback')
  end

end
