require 'rails_helper'

describe "User can create a new topic" do
  scenario "User goes to dashboard and create a new topic" do

    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit dashboard_path

    click_on "Create New Topic"

    expect(current_path).to eq(user_topics_path)

    text_1 = "What do you want to learn about? What do you want to learn to do? Type your response below to create a new topic."

    expect(page).to have_content(text_1)

    fill_in "topic[title]", with: "How to get disability in IL"

    text_2 = "We support your journey to learn something new. What do you want to do, make, or create once the hard work pays off?"

    expect(page).to have_content(text_2)

    fill_in "topic[goal]", with: "Either apply for disability or rule it out as an option."

    text_3 = "What is one specific question you have to get started?"

    expect(page).to have_content(text_3)

    fill_in "topic[questions]", with: "Do I need a lawyer?"

    click_on "Create New Topic"

    topic = Topic.last

    expect(current_path).to eq(topic_path(topic))

  end
end
