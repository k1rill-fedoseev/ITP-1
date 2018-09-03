class
	ENTRY
create
	make

feature
	date: DATE_TIME
	owner: PERSON
	subject: STRING
	place: detachable STRING

	set_subject(new_subject: STRING)
		do
			subject := new_subject
		end

	set_date(new_date: like date)
		do
			date := new_date
		end

	make(new_date: like date; new_owner: PERSON; new_subject: STRING; new_place: detachable STRING)
		do
			date := new_date
			owner := new_owner
			subject := new_subject
			place := new_place
		end
end
