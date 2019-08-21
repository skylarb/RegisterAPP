CREATE TABLE Receipt(
        id uuid NOT NULL DEFAULT gen_random_uuid(),
		ID_TRANS serial unique not null,
		
		foreign key(ID_TRANS) references transaction_list(ID_trans),
		
        Product_name character varying(32) NOT NULL,
				
        quantity varchar(200) not null,
		
        Total numeric(10,2) References transaction_list (sale_total),
		
		createdon timestamp without time zone NOT NULL DEFAULT now(),
        primary key (ID)
        );
		
		






							