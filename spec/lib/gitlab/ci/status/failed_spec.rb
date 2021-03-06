require 'spec_helper'

describe Gitlab::Ci::Status::Failed do
  subject do
    described_class.new(double('subject'), double('user'))
  end

  describe '#text' do
    it { expect(subject.text).to eq 'failed' }
  end

  describe '#label' do
    it { expect(subject.label).to eq 'failed' }
  end

  describe '#icon' do
    it { expect(subject.icon).to eq 'status_failed' }
  end

  describe '#favicon' do
    it { expect(subject.favicon).to eq 'favicon_status_failed' }
  end

  describe '#group' do
    it { expect(subject.group).to eq 'failed' }
  end
end
