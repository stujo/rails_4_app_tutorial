require 'spec_helper'

feature 'User wants greeting' do
  scenario 'says Hello World' do
    visit helloworld_path
    expect(page).to have_css 'H1', 'Hello World'
  end
end

