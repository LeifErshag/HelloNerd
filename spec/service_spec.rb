require 'json'
require 'rspec'
require 'rest-client'

describe 'HelloNerd: ' do
  context 'verifying version support: ' do 
    it 'says that it supports version 1.0.0', :integration => true do
      response = RestClient.get "#{ENV['PLAY_URL']}/v1.0.0/"
      expect(JSON.parse(response)['service'])
        .to eq('HelloNerd')
    end
  end
end  