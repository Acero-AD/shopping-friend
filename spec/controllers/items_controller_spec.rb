require "rails_helper"

RSpec.describe ItemsController, type: :controller do
  let(:store) { create(:store) }
  let(:data) {
    {
      "item" => {
        "name" => "test",
        "brand" => "test_brand",
      },
      "price" => {
        "amount" => 100,
        "store_id" => store.id
      }
    }
  }
  let(:response_body) { JSON.parse(response.body) }

  it "should create an item" do
    post :create, params: data
    expect(response).to have_http_status(:created)
    expect(response_body["name"]).to eq("test")
    expect(response_body["brand"]).to eq("test_brand")
    expect(response_body["prices"].first["amount"]).to eq("100.0")
    expect(response_body["prices"].first["store_id"]).to eq(store.id)
  end
end