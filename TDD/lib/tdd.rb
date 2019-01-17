class Array

  def my_uniq
    hsh = Hash.new(0)
    self.each do |el|
      hsh[el] += 1
    end
    hsh.keys
  end

  def two_sum
    result = []

    self.each_with_index do |num1, idx1|
      idx2 = idx1 + 1
      while idx2 < self.length
        result << [idx1, idx2] if self[idx1] + self[idx2] == 0
        idx2+=1
      end
    end
    result
  end

  def my_transpose
    new_matrix = Marshal.load(Marshal.dump(self))

    new_matrix.each_with_index do |row, i|
      row.each_with_index do |col, j|
        new_matrix[i][j] = self[j][i]
      end
    end
    new_matrix
  end

  def stock_picker
    pairs = Hash.new { |h, k| h[k] = [] }

    self.each_with_index do |price, day1|
      day2 = day1 + 1
      while day2 < self.length
        pairs[self[day2] - self[day1]] << [day1, day2]

        day2 += 1
      end
    end
    pairs.max_by { |k, v| k }.last.first
  end

end