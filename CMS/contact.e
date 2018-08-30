class
	CONTACT
create
	make

feature
	name: STRING
	phone_number: INTEGER
	work_place: STRING
	email: STRING
	call_emergency: detachable CONTACT

	set_name(new_name: STRING)
		do
			name := new_name
		end

	set_email(new_email: STRING)
		do
			email := new_email
		end

	set_work_place(new_work_place: STRING)
		do
			work_place := new_work_place
		end

	set_phone_number(new_phone_number: INTEGER)
		do
			phone_number := new_phone_number
		end

	set_call_emergency(new_call_emergency: detachable CONTACT)
		do
			call_emergency:= new_call_emergency
		end

	make(new_name, new_work_place, new_email: STRING; new_phone_number: INTEGER)
		do
			name := new_name
			email := new_email
			work_place := new_work_place
			phone_number := new_phone_number
		end
end
