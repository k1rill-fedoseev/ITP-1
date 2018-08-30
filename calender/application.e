class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature

	make
		local
			calender: CALENDER
			person: PERSON
			e1, e2: ENTRY
			t1, t2: TIME
		do
			create calender
			create person.make("Kirill", "Innopolis", "k.fedoseev@innopolis.university", 1234567890)
			create t1.make (10, 35, 0)
			create t2.make (10, 35, 0)
			
			e1 := calender.create_entry(t1, person, "Subject", Void )
			e2 := calender.create_entry(t2, person, "Subject", Void )
			print(calender.get_owner_name (e1))
			print(calender.in_conflict (e1, e2))
		end

end
