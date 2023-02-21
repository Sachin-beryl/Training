--
-- PostgreSQL database dump
--

-- Dumped from database version 12.13 (Ubuntu 12.13-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.13 (Ubuntu 12.13-0ubuntu0.20.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: aircraft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aircraft (
    aid integer NOT NULL,
    aname text,
    cruising_range integer
);


ALTER TABLE public.aircraft OWNER TO postgres;

--
-- Name: certified; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certified (
    eid integer,
    aid integer
);


ALTER TABLE public.certified OWNER TO postgres;

--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    eid integer NOT NULL,
    ename text,
    salary integer
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flights (
    flno integer NOT NULL,
    "from" character varying(50),
    "to" character varying(50),
    distance integer,
    departs time without time zone,
    arrives time without time zone,
    price integer
);


ALTER TABLE public.flights OWNER TO postgres;

--
-- Data for Name: aircraft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aircraft (aid, aname, cruising_range) FROM stdin;
51	Boeing 737	6690
52	Airbus A320	6940
53	Cessna 560 XL Citation Excel	3889
54	Boeing 737-85H	6690
55	SPice-jet SG440	4200
56	Airbus A319	4300
57	Airbus 720	3200
58	Boeing 121	800
59	GoAir 261	3000
60	Airbus A340-500	16670
\.


--
-- Data for Name: certified; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.certified (eid, aid) FROM stdin;
1	51
2	52
3	53
4	54
5	55
6	56
7	57
8	58
9	59
10	60
13	53
15	57
1	59
1	60
2	55
2	57
3	52
4	51
4	58
5	60
6	53
6	52
6	55
7	54
7	53
13	51
13	55
9	56
4	60
1	56
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (eid, ename, salary) FROM stdin;
1	Georgy Street	100000
2	Florina Pheasant	450000
3	Loren Irnys	250000
4	Silvia Ainscow	550000
5	Aleen Battill	80000
6	Thaine Dainter	750000
7	Elysia Kersey	35000
8	Aurthur Zorzetti	52000
9	Shay Franzetti	110000
10	Ruby Rodenborch	130000
11	Raine Boakes	298000
12	Vale Itzak	95100
13	Phil Fellibrand	101000
14	Saloma Stirley	67000
15	Hazel Kobus	260000
\.


--
-- Data for Name: flights; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flights (flno, "from", "to", distance, departs, arrives, price) FROM stdin;
1001	London	Malaga	1680	10:30:00	14:20:00	4580
1002	Toulouse	Bristol	915	11:00:00	11:55:00	23550
1005	Mumbai	Jaisalmer	895	14:15:00	16:05:00	5200
1006	Los-angeles	chicago	2818	15:55:00	21:56:00	15390
1008	Delhi	Srinagar	640	08:10:00	09:15:00	8300
1010	New-Delhi	Montreal	11842	23:55:00	06:10:00	160000
1011	Los-angeles	Honolulu	4108	18:10:00	22:10:00	14050
1004	Los-angeles	Honolulu	4108	17:05:00	21:05:00	16342
1009	philadelphia	new-york	130	11:30:00	17:30:00	3200
1012	madison	chicago	112	13:20:00	14:20:00	2900
1013	indianapolis	philadelphia	588	06:45:00	11:15:00	4100
1014	chicago	new-york	1100	14:45:00	17:00:00	5870
1007	madison	new-york	1301	10:30:00	17:45:00	47242
1003	madison	indianapolis	284	01:30:00	06:30:00	5400
\.


--
-- Name: aircraft aircraft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (aid);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (eid);


--
-- Name: flights flights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_pkey PRIMARY KEY (flno);


--
-- Name: certified certified_aid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified
    ADD CONSTRAINT certified_aid_fkey FOREIGN KEY (aid) REFERENCES public.aircraft(aid);


--
-- Name: certified certified_eid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified
    ADD CONSTRAINT certified_eid_fkey FOREIGN KEY (eid) REFERENCES public.employees(eid);


--
-- PostgreSQL database dump complete
--

