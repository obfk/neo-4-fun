require 'spec_helper'

describe Customer do
  describe '#number_of_events' do
    let(:events) { FactoryGirl.build_list(:event, 3) }

    it 'returns the length' do
      customer = FactoryGirl.create(:customer, events: events)
      expect(customer.number_of_events).to eq(3)
    end
  end
end
