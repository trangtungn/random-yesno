# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RandomYesNo do
  subject { RandomYesNo.show }

  it 'responses a json object' do
    expect(subject).to include_json(
      answer: /yes|no/,
      image: /yesno.wtf/,
      forced: /true|false/
    )
  end
end
