class
	CMS

feature
	create_contact(name, work_place, email: STRING; phone_number: INTEGER): CONTACT
		do
			create Result.make (name, work_place, email, phone_number)
		end

	edit_contact(c: CONTACT; name, work_place, email: STRING; phone_number: INTEGER)
		do
			c.set_name (name)
			c.set_work_place (work_place)
			c.set_email (email)
			c.set_phone_number (phone_number)
		end

	add_emergency_contact(c1, c2: CONTACT)
		do
			c1.set_call_emergency(c2)
		end

	remove_emergency_contact(c: CONTACT)
		do
			c.set_call_emergency(Void)
		end

end
