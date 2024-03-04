require 'rails_helper'

RSpec.describe "Tweets", type: :system do
  let!(:tweet) { create(:tweet) }

  describe 'List screen' do
    before do
      visit tweets_path
    end
    describe '#index' do
      it 'displays content of the tweet' do
        expect(page).to have_content tweet.content
      end

      it 'displays a link to the details screen' do
        expect(page).to have_link 'Show this tweet', href: "/tweets/#{tweet.id}"
      end

      it 'displays a link to post a tweet' do
        expect(page).to have_link 'New tweet', href: "/tweets/new"
      end

    end
  end
end
