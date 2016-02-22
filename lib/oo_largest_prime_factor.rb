# Enter your object-oriented solution here!
class LargestPrimeFactor

  def initialize(int)
    @int = int
  end

  def is_prime(int)
    if int <= 1
      return false
      elsif
        int <= 3
        return true
    end#if

    i = 2
    while i*i <= int do
      if int % i == 0
        return false
      end
      i += 1
    end#while
    return true
  end

  def number
    arr = Array.new
    for i in 0..@int
      if is_prime(i)
        arr.push(i)
      end
    end
    prime_factors = Array.new
    arr.each do |i|
      if @int % i == 0
        prime_factors.push(i)
      end
    end
    return prime_factors[-1]
  end

end
