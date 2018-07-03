require 'spec_helper'

describe 'rclocal' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      it { is_expected.to compile }
      it { is_expected.to contain_class('rclocal') }
    end
  end
end
