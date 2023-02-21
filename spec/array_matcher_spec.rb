require_relative 'spec_helper'

RSpec.describe ArrayMatcher do
  let(:arraymatcher) { ArrayMatcher.new }
  let(:arr1) { [1, 2, 4, 5, 8] }
  let(:arr2) { [2, 3, 5, 7, 9] }
  let(:arr3) { [1, 2, 5, 8, 9] }
  let(:arr4) { [15, 18, 23, 28, 29, 31, 33, 40, 47, 47, 48, 50, 66, 90, 96] }
  let(:arr5) { [8, 18, 26, 36, 38, 39, 40, 41, 42, 51, 55, 66, 68, 78, 90] }
  let(:arr6) { [9, 18, 23, 31, 36, 37, 40, 44, 46, 66, 72, 75, 78, 90, 93] }

  it 'can find matches in arrays' do
    expect(arraymatcher.find_matches([arr1, arr2, arr3])).to eq([2, 5])
  end

  it 'can find matches in lengthy arrays' do
    expect(arraymatcher.find_matches([arr4, arr5, arr6])).to eq([18, 40, 66, 90])
  end
end
