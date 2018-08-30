class
	PERSON
create
	make
	
feature
	name: STRING
	phone_number: INTEGER
	work_place: STRING
	email: STRING

	make(new_name, new_work_place, new_email: STRING; new_phone_number: INTEGER)
		do
			name := new_name
			work_place := new_work_place
			email := new_email
			phone_number := new_phone_number
		end
end
