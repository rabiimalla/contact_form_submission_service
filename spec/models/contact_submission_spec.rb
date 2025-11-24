require 'rails_helper'

RSpec.describe ContactSubmission, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:message) }
    it { should validate_presence_of(:site_owner_email) }
    it { should validate_presence_of(:site_url) }
  end

  describe 'email format' do
    it 'validates email format' do
      submission = build(:contact_submission, email: 'invalid_email', site_owner_email: 'invalid_email')
      expect(submission).not_to be_valid
    end

    it 'accepts valid email' do
      submission = build(:contact_submission, email: 'some.valid@email.com', site_owner_email: 'valid@siteowner.com')
      expect(submission).to be_valid
    end
  end

  describe 'site url format' do
    it 'validates site url format' do
      submission = build(:contact_submission, site_url: 'invalid url')
      expect(submission).not_to be_valid
    end

    it 'accepts valid url' do
      submission = build(:contact_submission, site_url: 'http://localhots:4200')
      expect(submission).to be_valid
    end
  end
end
