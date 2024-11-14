# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RandomYesNo do
  describe '.show' do
    subject { described_class.show }

    it 'responses a json object' do
      expect(subject).to include_json(
        answer: /yes|no/,
        image: /yesno.wtf/,
        forced: /true|false/
      )
    end

    it 'handles API errors' do
      allow(Net::HTTP).to receive(:get_response).and_return(
        instance_double(Net::HTTPBadRequest)
      )

      expect(subject).to be_nil
    end
  end
end
