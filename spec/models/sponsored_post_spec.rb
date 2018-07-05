require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:topic) { Topic.create!(name: "bikes", description: "best bike ever") }
  let(:sponsored_post) {SponsoredPost.create!(title:"ad-title", body:"by this bike", price: 99, topic: topic) }
  describe "attributes" do
    it "has title, body, and price attributes" do
      expect(sponsored_post).to have_attributes(title:"ad-title", body:"by this bike", price: 99, topic: topic)
    end

  end

  it { is_expected.to belong_to(:topic) }
end
