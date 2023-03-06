ALTER TABLE customers RENAME COLUMN first TO first_name;
ALTER TABLE customers RENAME COLUMN last TO last_name;

ALTER TABLE customers 
  ALTER COLUMN first_name TYPE varchar(255),
  ALTER COLUMN last_name TYPE varchar(255),
  ALTER COLUMN social TYPE varchar(9),
  ALTER COLUMN account_number TYPE varchar(14),
  ALTER COLUMN zip TYPE varchar(5)
;

ALTER TABLE customers ADD line_2 varchar(255);
ALTER TABLE customers DROP COLUMN current_balance_cents;

ALTER TABLE statements 
  ALTER COLUMN customer_id SET NOT NULL,
  ALTER COLUMN gallons_used TYPE decimal(10,2),
  ALTER COLUMN status SET DEFAULT 'payment_due'
;