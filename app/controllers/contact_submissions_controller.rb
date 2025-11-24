class ContactSubmissionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :validate_site_owner, only: [ :create ]

  def create
    @contact_submission = ContactSubmission.new(contact_submission_params)

    if @contact_submission.save
      ContactSubmissionMailer.new_submission(@contact_submission).deliver_later
      render json: { status: "success", message: "Form submitted successfully" }, status: :created
    else
      render json: { status: "error", errors: @contact_submission.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def contact_submission_params
    params.require(:contact_submission).permit(:name, :email, :message, :site_owner_email, :site_url)
  end

  def validate_site_owner
    # For now it just checks the presence of :client_email. Later proper authentication should be applied.
    site_owner_email = params.dig(:contact_submission, :site_owner_email)
    unless site_owner_email.present?
      render json: { status: "error", message: "Static site owner's email is required" }, status: :unprocessable_entity
    end
  end
end
