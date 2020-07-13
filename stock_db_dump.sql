--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    ticker character varying(10) NOT NULL,
    filings character varying(10),
    reporting_currency character varying(10) NOT NULL,
    fiscal_year_ended date NOT NULL,
    cash_and_equivalents numeric(20,2) NOT NULL,
    short_term_investments numeric(20,2) NOT NULL,
    current_debt numeric(20,2) NOT NULL,
    revenue numeric(20,2) NOT NULL,
    cost_of_revenue numeric(20,2) NOT NULL,
    revenue_1_fy_ago numeric(20,2) NOT NULL,
    operating_cash_flow numeric(20,2) NOT NULL,
    capital_expenditure numeric(20,2) NOT NULL,
    central_index_key character varying(20)
);


ALTER TABLE public.company OWNER TO postgres;

--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (ticker, filings, reporting_currency, fiscal_year_ended, cash_and_equivalents, short_term_investments, current_debt, revenue, cost_of_revenue, revenue_1_fy_ago, operating_cash_flow, capital_expenditure, central_index_key) FROM stdin;
\.


--
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (ticker);


--
-- PostgreSQL database dump complete
--

