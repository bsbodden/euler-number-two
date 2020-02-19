RSpec.describe Euler::Number::Two do
  it "has a version number" do
    expect(Euler::Number::Two::VERSION).not_to be nil
  end
  
  EVEN_FIBONACCIS_LE_4e06 = [0, 2, 8, 34, 144, 610, 2584, 10946, 46368, 196418, 832040, 3524578]
  EVEN_FIBONACCIS_LE_2 = [0, 2]
  EVEN_FIBONACCIS_LE_8 = [0, 2, 8]
  EVEN_FIBONACCIS_LE_9 = EVEN_FIBONACCIS_LE_8
  EVEN_FIBONACCIS_LE_100 = [0, 2, 8, 34]
    
  test_data = [
    { limit: 0, sum: 0 },
    { limit: 1, sum: 0 },
    { limit: 2, sum: EVEN_FIBONACCIS_LE_2.sum },
    { limit: 8, sum: EVEN_FIBONACCIS_LE_8.sum },
    { limit: 9, sum: EVEN_FIBONACCIS_LE_9.sum },
    { limit: 100, sum: EVEN_FIBONACCIS_LE_100.sum },
    { limit: 4e+06, sum: EVEN_FIBONACCIS_LE_4e06.sum }
  ]

  it "can calculate sum of the even-value elements of the Fibonacci sequence that do not exceed given limit" do
    test_data.each do |data|
      expect(Euler::Number::Two.sum_even_fibs(data[:limit])).to eq(data[:sum])
    end
  end
end
