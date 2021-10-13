require "rails_helper"

RSpec.feature "Enroll Voter", :type => :feature do
  scenario "Voter searches for enrollment information and fails" do
    visit voter_search_path

    within('form') do
      fill_in :first_name, with: 'Darion'
      fill_in :last_name, with: 'Wood'
      fill_in :last_4_digits_ssn, with: 4444
    end

    click_button :search
    # incompatible with tailwind https://github.com/rails/rails/pull/43110
    expect(page).to have_text("Nope!")
  end
end