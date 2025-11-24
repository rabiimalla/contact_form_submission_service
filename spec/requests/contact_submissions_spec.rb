require 'rails_helper'

RSpec.describe 'ContactSubmissions', type: :request do
  describe 'POST /contact_submissions' do
    let(:valid_params) do
      {
        contact_submission: {
          name: 'Some name',
          email: 'some.name@email.com',
          message: 'some message',
          site_owner_email: Faker::Internet.email,
          site_url: 'http://somestaticsite.com'
        }
      }
    end

    let(:invalid_params) do
      {
        form_submission: {
          name: '',
          email: 'invalid-email',
          message: ''
        }
      }
    end

    context 'with valid parameters' do
      it 'creates a new contact submission' do
        expect {
          post contact_submissions_path, params: valid_params
        }.to change(ContactSubmission, :count).by(1)
      end

      it 'returns success response' do
        post contact_submissions_path, params: valid_params
        expect(response).to have_http_status(:created)
        expect(json_response['status']).to eq('success')
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new form submission' do
        expect {
          post contact_submissions_path, params: invalid_params
        }.not_to change(ContactSubmission, :count)
      end

      it 'returns error response' do
        post contact_submissions_path, params: invalid_params
        expect(response).to have_http_status(:unprocessable_entity)
        expect(json_response['status']).to eq('error')
      end
    end
  end

  def json_response
    JSON.parse(response.body)
  end
end
