require 'rails_helper'

RSpec.describe 'Merchants API' do
  it 'sends a list of merchants' do
    create_list(:merchant, 8)

    get '/api/v1/merchants'

    expect(response).to be_success
    merchants = JSON.parse(response.body)
    expect(merchants.count).to eq(8)
  end

  it 'can obtain one merchant by the :id' do
    id = create(:merchant).id

    get "/api/v1/merchants/#{id}"

    merchant = JSON.parse(response.body)

    expect(response).to be_success
    expect(merchant["id"]).to eq(id)
  end
end