require "rails_helper"

  describe "A user visits a topics show page" do
    before(:each) do
      date = Date.today - 1.days
      date_2 = Date.today - 2.days
      user = create(:user)
      topic = create(:topic, title: "Disability in CO", user: user)
      @question_1 = create(:question, topic: topic, title: "Do I need a lawyer?")
      question_2 = create(:question, topic: topic, title: "Do I need a doctor note?", created_at: date)
      question_3 = create(:question, topic: topic, title: "Does it cost money?", created_at: date_2)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit user_topic_path(topic)
    end

    it "sees the questions that exist for that topic" do
      expect(page).to have_content @question_1.title
    end

  end
