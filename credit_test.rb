require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './credit_redux'

class CreditTest < Minitest::Test 

	def test_this_file_exists
		
		assert true
	end

	def test_it_can_break_number_into_individual_digits
		check = Credit.new("12345")
		assert_equal [1,2,3,4,5],check.splitter
	end

	def test_it_doubles_every_other_digit_in_array
		check = Credit.new("12")
		check.splitter
		assert_equal [1,4],check.doubler
	end

	def test_it_reverses_an_array
		check = Credit.new("1234")
		check.splitter
		assert_equal [4,3,2,1],check.reverser 
	end

	def test_it_evaluates_num_greater_than_10
		check = Credit.new("5638")
		check.splitter
		check.doubler
		assert [5,3,3,7],check.super_size
	end

	def test_it_can_sum_an_array
		check = Credit.new("1234")
		check.splitter
		assert_equal 10,check.summer
	end

	def test_it_super_sizes
		check = Credit.new("1518")
		check.splitter
		check.doubler
		assert_equal [1,1,1,7],check.super_size
	end

	def test_it_can_evaluate_if_it_divisible_by_10
		check = Credit.new("46")
		check.splitter
		check.summer
		check.modulus
		assert check.valid
	end

	def test_it_prints_out_proper_output
		check = Credit.new("34")
		check.credit_check
		assert_equal "VALID",check.result
	end

	def test_it_works_on_real_invalid_number
		check = Credit.new("5541801923795240")
		check.credit_check
		assert_equal "INVALID",check.result
	end

	def test_it_works_on_real_valid_number
		check = Credit.new("4024007136512380")
		check.credit_check
		assert_equal "VALID",check.result
	end
end

