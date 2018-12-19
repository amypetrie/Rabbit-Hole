require 'rails_helper'

describe 'User' do
  describe 'on the dashboard page' do
    it 'can see their topics' do
      user = create(:user)
      topic = create(:topic, user_id: user.id)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/dashboard'

      expect(page).to have_content(topic.title)
    end

    it 'can see topics in their correct sections' do
      user = create(:user)
      topic_1 = create(:topic, user_id: user.id, complete: true)
      topic_2 = create(:topic, user_id: user.id)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/dashboard'

      within(".complete_topics") do
        expect(page).to have_content(topic_1.title)
        expect(page).to_not have_content(topic_2.title)
      end

      within(".in_progress_topics") do
        expect(page).to have_content(topic_2.title)
        expect(page).to_not have_content(topic_1.title)
      end
    end

    it 'can see topics in their correct sections' do
      user = create(:user)
      topic_1 = create(:topic, user_id: user.id)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/dashboard'

      click_on topic_1.title

      expect(current_path).to eq(topic_path(topic_1))
    end
  end
end
