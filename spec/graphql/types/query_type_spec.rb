# frozen_string_literal: true

require 'rails_helper'

describe Types::QueryType do
  describe 'items' do
    let!(:item_1) { create(:item) }
    let!(:item_2) { create(:item) }

    let (:query) do
      <<~GRAPHQL
        query Items {
          items {
            title
          }
        }
      GRAPHQL
    end

    it 'returns all the items' do
      results = GraphqlOnRailsSchema.execute(query)

      expect(results.dig("data", "items").pluck("title")).to contain_exactly(item_1.title, item_2.title)
    end
  end

  describe "users" do
    let!(:user_1) { create(:user) }
    let!(:user_2) { create(:user) }

    let(:query) do
      <<~GRAPHQL
        query Users {
          users {
            email
          }
        }
      GRAPHQL
    end

    it 'returns all the users' do
      results = GraphqlOnRailsSchema.execute(query)

      expect(results.dig("data", "users").pluck("email")).to contain_exactly(user_1.email, user_2.email)
    end
  end
end
