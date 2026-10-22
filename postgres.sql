-- DROP TABLE IF EXISTS external_demo.exim_customer;

CREATE TABLE IF NOT EXISTS external_demo.exim_customer
(
    customer_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    name character varying(100) COLLATE pg_catalog."default",
    dob date,
    city character varying(50) COLLATE pg_catalog."default",
    postal_code character varying(10) COLLATE pg_catalog."default",
    country character varying(50) COLLATE pg_catalog."default",
    mobile_phone character varying(15) COLLATE pg_catalog."default",
    email character varying(150) COLLATE pg_catalog."default",
    marital_status character varying(20) COLLATE pg_catalog."default",
    customer_branch character varying(100) COLLATE pg_catalog."default",
    occupation character varying(100) COLLATE pg_catalog."default",
    cust_monthly_income numeric(12,2),
    nationality character varying(50) COLLATE pg_catalog."default",
    gender character varying(20) COLLATE pg_catalog."default",
    mail_sent character varying(50) COLLATE pg_catalog."default",
    sms_sent character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT exim_customer_pkey PRIMARY KEY (customer_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS external_demo.exim_customer
    OWNER to dbmsowner;
ALTER TABLE IF EXISTS external_demo.exim_customer
    ADD COLUMN customer_type character varying[10];

COMMENT ON COLUMN external_demo.exim_customer.customer_type
    IS 'Customer_type to classify entity';
