require 'rails_helper'

RSpec.describe ContactSubmissionMailer, type: :mailer do
  describe 'new submission' do
    let(:submission) { create(:contact_submission) }
    let(:mail) { ContactSubmissionMailer.new_submission(submission) }

    it 'sends to the email to the site owner email' do
      expect(mail.to).to eq([ submission.site_owner_email ])
    end

    it 'has the correct subject' do
      expect(mail.subject).to eq("New form submission from #{submission.name}")
    end

    it 'contains the submission details' do
      expect(mail.body.encoded).to include(submission.name)
    end
  end
end
