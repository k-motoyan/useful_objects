RSpec.describe UsefulObjects::ObjectExtender do
  using UsefulObjects::ObjectExtender

  describe 'instance methods' do
    describe 'to_bool' do
      subject { value.to_bool }

      context 'String' do
        context 'when value is "false"' do
          let(:value) { 'false' }
          it { is_expected.to be_falsey }
        end

        context 'when value is empty' do
          let(:value) { '' }
          it { is_expected.to be_truthy }
        end
      end

      context 'Integer' do
        context 'when value is 0' do
          let(:value) { 0 }
          it { is_expected.to be_falsey }
        end

        context 'when value is 1' do
          let(:value) { 1 }
          it { is_expected.to be_truthy }
        end
      end

      context 'Float' do
        context 'when value is 0.0' do
          let(:value) { 0.0 }
          it { is_expected.to be_falsey }
        end

        context 'when value is 0.1' do
          let(:value) { 0.1 }
          it { is_expected.to be_truthy }
        end
      end

      context 'Boolean' do
        context 'when value is true' do
          let(:value) { true }
          it { is_expected.to be_truthy }
        end

        context 'when value is false' do
          let(:value) { false }
          it { is_expected.to be_falsey }
        end
      end

      context 'when value is nil' do
        let(:value) { nil }
        it { is_expected.to be_falsey }
      end

      context 'when value base object' do
        let(:value) { Object.new }
        it { is_expected.to be_truthy }
      end
    end
  end
end
