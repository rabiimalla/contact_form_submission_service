class ContactSubmissionMailer < ApplicationMailer
  default from: "notifications@contactsubmissionservice.com"

  def new_submission(submission)
    @submission = submission
    mail(
      to: submission.site_owner_email,
      subject: "New form submission from #{submission.name}"
    )
  end
end
