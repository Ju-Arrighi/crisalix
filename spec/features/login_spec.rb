require 'rails_helper'

RSpec.feature 'Login', type: :feature do
  scenario 'have a login button' do
    visit('/')
    expect(page).to have_selector('button')
    expect(page).to have_link('Login')
  end
  scenario 'take to login page' do
    visit(root_path)
    click_on('Login')
    expect(page).to have_content('Email')
    expect(page).to have_content('Password')
  end
end
