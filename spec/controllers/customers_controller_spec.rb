require 'spec_helper'

describe CustomersController, type: :controller do
  describe '#index' do
    before do
      @foo = FactoryGirl.create_list(:customer, 10)
    end

    it 'returns the correct status code' do
      get :index
      expect(response.status).to eq(200)
    end

    it 'assigns @customers' do
      get :index
      expect(assigns(:customers)).to eq(@foo)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'limits results' do
      get :index, { limit: 1 }
      expect(assigns(:customers)).to eq([@foo.first])
    end

    it 'offsets results' do
      get :index, { offset: 9 }
      expect(assigns(:customers)).to eq([@foo.last])
    end
  end
end
