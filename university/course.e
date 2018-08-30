class
	COURSE

inherit
	ARGUMENTS

create
	make

feature

	make
			-- Run application.
		do
			create_class("ITP 1", 1801, "Mondays", 150, 3)
			print(Current)
		end



	name: STRING
			-- Course name

	identifier: INTEGER
			-- Course identifier

	schedule: STRING
			-- Course schedule

	max_students: INTEGER
			-- Maximum number of students that can be enrolled to the course

	min_students: INTEGER
			-- Maximum number of students that can be enrolled to the course


	create_class (name1: STRING; identifier1: INTEGER; schedule1: STRING; max_students1, min_students1: INTEGER)
			-- Creates course
		do
			name := name1
			identifier := identifier1
			schedule := schedule1
			max_students := max_students1
			min_students := min_students1
		end

end
