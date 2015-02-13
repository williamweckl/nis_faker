module Faker
  class Nis
    class << self
      def number
        generate_numbers

        @numbers.join
      end

      def pretty
        generate_numbers

        new_numbers_array = []
        @numbers.each_with_index do |number, index|
          new_numbers_array << '.' if index == 3 || index == 8
          new_numbers_array << '-' if index == 10
          new_numbers_array << number
        end

        new_numbers_array.join
      end

      private

      def generate_numbers
        @numbers = []
        10.times do
          @numbers << Random.new.rand(1..9)
        end

        last_digit = (11 - (sum_products % 11))
        last_digit = 0 if last_digit > 9
        @numbers << last_digit

        generate_numbers if black_list.include?(@numbers.join)

        @numbers
      end

      def multiply_weights
        @x = []
        i = 0
        [3, 2, 9, 8, 7, 6, 5, 4, 3, 2].each do |weight|
          @x << @numbers[i] * weight
          i += 1
        end
      end

      def sum_products
        multiply_weights
        sum = 0
        10.times do |n|
          sum += @x[n]
        end
        sum
      end

      def black_list
        %w(000.0000.000-0)
      end

    end
  end
end