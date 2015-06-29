Given(/^I am on the chirps homepage$/) do
  url = "localhost:3000"
  visit url
end

And(/^I click New Chirp$/) do
  click_on 'New Chirp'
end

And(/^I expect to be on the new chirp page$/) do
  expect(page).to have_selector('#chirp_body')
end

And(/^I fill in the body and user$/) do
  fill_in 'chirp_body', :with =>  "My first chirp"
  fill_in 'chirp_user_id', :with => "1"
  click_on 'Create Chirp'
end

And(/^I expect to be on the display chirp page$/) do
  expect(page).to have_text('Chirp was successfully created')
end
