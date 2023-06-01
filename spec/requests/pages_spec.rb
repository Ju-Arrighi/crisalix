require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /index" do
    it 'Should go to home with welcome message' do
    visit(root_path)
    expect(page).to have_content('Crisalix')
    end
  end
end
