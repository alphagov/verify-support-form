require 'rails_helper'

RSpec.describe 'The question form' do

  it 'should visit question form when question is selected' do
    visit '/'
    choose 'select_subject_question'
    click_button 'Continue'
    expect(page).to have_content('Ask a question or give feedback')
  end

  it 'should show errors for required fields' do
    visit '/question'
    click_button 'Submit'
    expect(page).to have_content "Message can't be blank"
    expect(page).to have_content "Your name can't be blank"
    expect(find_field(id: 'support_your_email_address')).to match_selector('.form-control-error')
  end

  it 'should maintain the input values after validation fails' do
    visit '/question'
    fill_in('Message', with: 'Example message')
    fill_in('Your name', with: '') #maintain input values when another field is missing content
    fill_in('Your email address', with: 'example@example.com')

    click_button 'Submit'

    expect(find_field(id: 'support_message').value).to eq('Example message')
    expect(find_field(id: 'support_your_name').value).to eq('')
    expect(find_field(id: 'support_your_email_address').value).to eq('example@example.com')
  end

  def submit_valid_question_form
    visit '/question'
    fill_in('Message', with: 'Example message')
    fill_in('Your name', with: 'Example name')
    fill_in('Your email address', with: 'http://example.com')

    click_button 'Submit'
  end

end
