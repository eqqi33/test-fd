--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: transaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaction (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    email character varying(255),
    item character varying(255),
    quantity integer,
    totalprice numeric
);


ALTER TABLE public.transaction OWNER TO postgres;

--
-- Name: transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transaction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transaction_id_seq OWNER TO postgres;

--
-- Name: transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transaction_id_seq OWNED BY public.transaction.id;


--
-- Name: transaction id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction ALTER COLUMN id SET DEFAULT nextval('public.transaction_id_seq'::regclass);


--
-- Data for Name: transaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaction (id, firstname, lastname, email, item, quantity, totalprice) FROM stdin;
1	Harlene	Lippett	hlippett0@cbc.ca	Barang1	20	100000
2	Marco	Bootyman	mbootyman1@163.com	Barang2	15	225000
3	Myles	Gomer	mgomer2@cornell.edu	Barang3	3	135000
5	Cherri	Cuncarr	ccuncarr4@so-net.ne.jp	Barang5	7	210000
6	Elfreda	Rathbone	erathbone5@seesaa.net	Barang6	20	1500000
7	Jenelle	Mc Caughan	jmccaughan6@pen.io	Barang7	4	90800
8	Jecho	Flaxman	jflaxman7@google.es	Barang8	1	4500
9	Alden	Gasgarth	agasgarth8@ox.ac.uk	Barang9	4	52000
10	Katherina	Pendergrast	kpendergrast9@bloglovin.com	Barang10	5	450000
4	Skippy	Garnsworth	sgarnsworth3@vkontakte.ru	Barang3	5	15000
\.


--
-- Name: transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaction_id_seq', 10, true);


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres REVOKE ALL ON TABLES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO postgres WITH GRANT OPTION;


--
-- PostgreSQL database dump complete
--

