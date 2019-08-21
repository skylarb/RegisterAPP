		CREATE TABLE Transaction_list(
		ID_Cash char(5),
		Foreign key (ID_Cash) REFERENCES employee (employeeID),   -- references the cashier number
		
		ID_Trans serial, --count for the transaction number
		ID uuid DEFAULT gen_random_uuid() unique NOT NULL, -- transaction ID

		Sale_total numeric(10,2) unique not null, --the total amount
		
		createdon timestamp without time zone NOT NULL DEFAULT now()  -- the time/date it was sold
		);


