class
	CALENDER

feature
	create_entry(date: DATE_TIME; owner: PERSON; subject: STRING; place: detachable STRING): ENTRY
		do
			create Result.make(date, owner, subject, place)
		end

	edit_subject (e: ENTRY; new_subject: STRING)
		do
			e.set_subject(new_subject)
		end

	edit_date (e: ENTRY; new_date: DATE_TIME)
		do
			e.set_date(new_date)
		end

	get_owner_name (e: ENTRY): STRING
		do
			Result := e.owner.name
		end

	in_conflict (e1, e2: ENTRY): BOOLEAN
		local
			f: BOOLEAN
		do
			f := true
			if attached e1.place as p1 and attached e2.place as p2 then
				f := p1.is_equal(p2)
			end
			Result := e1.date.is_equal (e2.date) and not f
		end
end
