class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature

	make
		local
			cms: CMS
			c1, c2, c3: CONTACT
		do
			create cms
			c1 := cms.create_contact ("Kirill1", "Innopolis", "k.fedoseev@innopolis.university", 1234567890)
			c2 := cms.create_contact ("Kirill2", "Innopolis", "k.fedoseev@innopolis.university", 1234567890)
			c3 := cms.create_contact ("Kirill3", "Innopolis", "k.fedoseev@innopolis.university", 1234567890)
			cms.add_emergency_contact(c1, c2)
			cms.add_emergency_contact(c2, c3)

			cms.edit_contact (c2, "Kirill2.1", "Innopolis", "k.fedoseev@innopolis.university", 1234567890)
			
			cms.remove_emergency_contact (c2)
			cms.remove_emergency_contact (c3)
		end

end
