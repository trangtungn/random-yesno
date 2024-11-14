# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RandomYesNo do
  describe '.show' do
    subject { described_class.show }

    it 'responses a json object' do
      expect(subject).to include_json(
        answer: /yes|no/,
        image: /.*(yes|no)\d+\.gif/,
        forced: /true|false/
      )
    end

    context 'when base_url is configured' do
      before do
        described_class.base_url = 'https://example.com/gifs'
      end

      after do
        # Reset to default URL after test
        described_class.base_url = RandomYesNo::DEFAULT_URL
      end

      it 'uses the configured URL' do
        expect(subject['image']).to start_with('https://example.com/gifs/')
      end
    end
  end
end
