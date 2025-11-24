class ContactSubmission < ApplicationRecord
  # Validations
  validates :name, :email, :message, :site_url, :site_owner_email, presence: true
  validates :email, :site_owner_email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :site_url, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: "must be a valid URL" }
end
