class
	BANK_ACCOUNT

inherit
	ARGUMENTS

create
	make

feature
	make
			-- Run application.
		do
			balance := 100
			name := "Kirill Fedoseev"
			deposit(100)
			withdraw(10)
			print(Current)
		end

	name: STRING
		-- Account name

	balance: INTEGER
		-- Account balance

	deposit (value: INTEGER)
		require
			positive_value: value >= 0
		do
			balance := balance + value
		end

	withdraw (value: INTEGER)
		require
			positive_value: value >= 0
		do
			balance := balance - value
		end

invariant
	greater_than_100: balance >= 100
	less_than_1000000: balance <= 1000000

end


