require 'temporal/connection/converter/payload/json'

describe Temporal::Connection::Converter::Payload::JSON do
  subject { described_class.new(options) }

  describe 'round trip' do
    context 'without custom options' do
      let(:options) { {} }

      it 'safely handles non-ASCII encodable UTF characters' do
        input = { 'one' => 'one', two: :two, ':three' => '☻' }

        expect(subject.from_payload(subject.to_payload(input))).to eq(input)
      end

      it 'handles floats without loss of precision' do
        input = { 'a_float' => 1626122510001.305986623 }

        result = subject.from_payload(subject.to_payload(input))['a_float']
        expect(result).to be_within(1e-8).of(input['a_float'])
      end
    end

    context 'with custom options' do
      let(:options) { { circular: true } }

      it 'safely handles circular references' do
        input = []
        input << [input]

        expect(subject.from_payload(subject.to_payload(input))).to eq(input)
      end
    end
  end
end
