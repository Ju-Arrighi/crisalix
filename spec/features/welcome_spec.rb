require 'rails_helper'

feature "Welcome page", type: :feature do
  scenario 'Show home with welcome message' do
    visit('/')
    expect(page).to have_content('Welcome to Crisalix')
  end
  scenario 'have a login button' do
    visit('/')
    expect(page).to have_selector('button')
    expect(page).to have_link('Login')
  end
end
