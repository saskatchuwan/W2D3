require 'rspec'
require 'tdd'

#try including spec to test if original object was modified
#try creating specs to test if calling native methods (using to_recieve/to_not_recieve)
#try checking input/output types

describe Array do
  let(:array) { [1, 2, 1, 3, 3] }
  describe '#my_uniq' do
    it 'will remove duplicates in array' do
      expect(array.my_uniq).to eq([1, 2, 3])
    end
  end

  describe '#two_sum' do
    it 'will find pairs of positions' do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end

    it 'sorted smaller index first' do
      expect([-1, 0, 2, -2, 1].two_sum).to_not eq([[4, 0], [3, 2]])
    end
  
  end

  describe '#my_transpose' do

    it 'will transpose rows to columns or vice versa' do
      expect([[0, 1, 2],[3, 4, 5],[6, 7, 8]].my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
  end

  describe '#stock_picker' do
    it 'outputs most profitable pair of days' do
      expect([5, 1, 3, 10, 6, 1, 10].stock_picker).to eq([1,3])
    end

    it "can't sell stock before buying" do 
      expect([5, 1, 3, 10, 6, 1, 10].stock_picker).to_not eq([3,5])
    end

    it 'outputs only one pair of days' do
      expect([5, 1, 3, 10, 6, 1, 10].stock_picker).to all(be_an(Integer))
    end

  end


end