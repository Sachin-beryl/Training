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

--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


--
-- Name: Score; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."Score" AS ENUM (
    '1',
    '2',
    '3',
    '4',
    '5'
);


ALTER TYPE public."Score" OWNER TO postgres;

--
-- Name: Status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."Status" AS ENUM (
    'Approved',
    'pending',
    'cancelled',
    'waiting'
);


ALTER TYPE public."Status" OWNER TO postgres;

--
-- Name: score; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.score AS ENUM (
    '1',
    '2',
    '3',
    '4',
    '5'
);


ALTER TYPE public.score OWNER TO postgres;

--
-- Name: status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.status AS ENUM (
    'Approved',
    'pending',
    'cancelled',
    'waiting'
);


ALTER TYPE public.status OWNER TO postgres;

--
-- Name: type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.type AS ENUM (
    'Veg',
    'non_veg',
    'veg_and_non_veg'
);


ALTER TYPE public.type OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cart_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_items (
    id bigint NOT NULL,
    customer_id integer,
    menu_id integer,
    quantity integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.cart_items OWNER TO postgres;

--
-- Name: cart_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_items_id_seq OWNER TO postgres;

--
-- Name: cart_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_items_id_seq OWNED BY public.cart_items.id;


--
-- Name: checkout_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.checkout_details (
    id bigint NOT NULL,
    order_id integer,
    check_at timestamp without time zone,
    address character varying(150),
    delivery_charge integer
);


ALTER TABLE public.checkout_details OWNER TO postgres;

--
-- Name: checkout_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.checkout_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.checkout_details_id_seq OWNER TO postgres;

--
-- Name: checkout_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.checkout_details_id_seq OWNED BY public.checkout_details.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id bigint NOT NULL,
    first_name character varying(20),
    last_name character varying(20),
    email character varying(100),
    phone character varying(12),
    username character varying(50),
    password character varying(50),
    address character varying(150),
    created_at timestamp without time zone
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: menu_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menu_items (
    id bigint NOT NULL,
    restaurant_id integer,
    name character varying(50),
    price integer,
    description character varying(100)
);


ALTER TABLE public.menu_items OWNER TO postgres;

--
-- Name: menu_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menu_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_items_id_seq OWNER TO postgres;

--
-- Name: menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;


--
-- Name: order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_details (
    id bigint NOT NULL,
    order_id integer,
    quantity integer
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- Name: order_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_details_id_seq OWNER TO postgres;

--
-- Name: order_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_details_id_seq OWNED BY public.order_details.id;


--
-- Name: order_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_status (
    id bigint NOT NULL,
    status public.status,
    "time" timestamp without time zone,
    order_id integer
);


ALTER TABLE public.order_status OWNER TO postgres;

--
-- Name: order_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_status_id_seq OWNER TO postgres;

--
-- Name: order_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_status_id_seq OWNED BY public.order_status.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    customer_id integer,
    created_at timestamp without time zone,
    menu_id integer
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id bigint NOT NULL,
    order_id integer,
    amount integer,
    "Date" timestamp without time zone
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_id_seq OWNER TO postgres;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    id bigint NOT NULL,
    menu_id integer,
    score public.score,
    remarks character varying(200),
    date timestamp without time zone,
    customer_id integer
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_id_seq OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;


--
-- Name: restaurants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.restaurants (
    id bigint NOT NULL,
    name character varying(50),
    type public.type,
    address character varying(100),
    open_time time without time zone,
    close_time time without time zone,
    ratings public.score
);


ALTER TABLE public.restaurants OWNER TO postgres;

--
-- Name: restaurants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.restaurants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.restaurants_id_seq OWNER TO postgres;

--
-- Name: restaurants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.restaurants_id_seq OWNED BY public.restaurants.id;


--
-- Name: cart_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items ALTER COLUMN id SET DEFAULT nextval('public.cart_items_id_seq'::regclass);


--
-- Name: checkout_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.checkout_details ALTER COLUMN id SET DEFAULT nextval('public.checkout_details_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: menu_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);


--
-- Name: order_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details ALTER COLUMN id SET DEFAULT nextval('public.order_details_id_seq'::regclass);


--
-- Name: order_status id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_status ALTER COLUMN id SET DEFAULT nextval('public.order_status_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: ratings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- Name: restaurants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurants ALTER COLUMN id SET DEFAULT nextval('public.restaurants_id_seq'::regclass);


--
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_items (id, customer_id, menu_id, quantity, created_at, updated_at) FROM stdin;
1	3	7	2	2023-02-02 11:30:00	2023-02-02 13:05:00
2	8	12	1	2023-01-07 10:07:00	2023-01-08 10:05:00
3	14	10	2	2022-12-17 12:23:00	2022-12-17 12:30:00
4	9	17	5	2023-02-18 11:37:00	2023-02-18 23:40:00
5	8	19	5	2023-01-28 13:37:00	2023-01-28 14:00:00
\.


--
-- Data for Name: checkout_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.checkout_details (id, order_id, check_at, address, delivery_charge) FROM stdin;
1	2	2023-02-10 14:23:00	48 Delaware Point 	40
2	9	2023-01-09 11:51:00	567 Sycamore Way 	20
3	3	2023-01-22 10:13:00	04 Talmadge Lane	20
4	10	2022-08-08 20:08:00	30470 Emmet Circle	60
5	12	2022-09-22 19:10:00	6438 Sunnyside Street	40
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, first_name, last_name, email, phone, username, password, address, created_at) FROM stdin;
1	Norah	Bulluck	nbulluck0@timesonline.co.uk	4498136144	nbulluck0	m6R1ef	30470 Emmet Circle	2023-02-17 11:46:00
2	Rad	Ripsher	rripsher1@cocolog-nifty.com	7318203254	rripsher1	XaF6uX	20112 Sycamore Street	2023-01-05 14:05:00
3	Lonnie	Tarbard	ltarbard2@weebly.com	2088202323	ltarbard2	fkGNrm	63971 Shelley Crossing	2023-01-29 05:28:00
4	Newton	Beldom	nbeldom3@tripod.com	9105924398	nbeldom3	MsAJdurqvqIz	07926 Canary Center	2023-02-10 23:06:00
5	Ethe	Downing	edowning4@fastcompany.com	5167204325	edowning4	XxLacF4	48 Delaware Point	2023-02-23 03:46:00
6	Andrey	Fryd	afryd5@cmu.edu	7161592822	afryd5	1lprxTZaq	93 Lake View Parkway	2023-01-15 19:14:00
7	Ibrahim	Dorrity	idorrity6@tinyurl.com	9665654644	idorrity6	DanmL6g	3 Kings Crossing	2022-10-28 14:43:00
8	Berti	Sherlock	bsherlock7@weibo.com	8728756665	bsherlock7	obt2s6GPbxv	20 Hazelcrest Way	2022-05-13 12:06:00
9	Bendite	Danis	bdanis8@live.com	4922883725	bdanis8	UIWjfEN	4 Buhler Junction	2022-07-09 02:32:00
10	Alyse	Mapplebeck	amapplebeck9@sakura.ne.jp	7402722084	amapplebeck9	OwKrBNveZ	567 Sycamore Way	2022-05-25 05:49:00
11	Muriel	Kibbel	mkibbela@indiegogo.com	9358185298	mkibbela	rRIkLR	6438 Sunnyside Street	2022-11-21 05:57:00
12	Lonna	Premble	lprembleb@salon.com	8484292339	lprembleb	fDKbZZ	6517 Linden Center	2023-01-18 22:00:00
13	Marlo	Scrymgeour	mscrymgeourc@csmonitor.com	1176070248	mscrymgeourc	6waWNAwz	04 Talmadge Lane	2022-07-16 19:58:00
15	Ashly	Hiley	ahileye@biglobe.ne.jp	8836875761	ahileye	1m03cP9Z	59 Boyd Road	2022-12-06 05:59:00
14	Gilberta	Coxhead	gcoxheadd@mapy.cz	3127590453	gcoxheadd	b4EQLkNTfLF	013 Badeau Road	2023-02-03 01:03:00
\.


--
-- Data for Name: menu_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu_items (id, restaurant_id, name, price, description) FROM stdin;
1	3	pizza	230	1 medium , paneer and onion
2	1	Sandwish	120	2 pic , Corn and spinach whole wheat
3	7	Biryani	450	1 kg, Mutton hyderabadi Dum biryani
4	9	Dal makhani	140	1 plate , Urad dal and rajma
5	4	Crispy veg burger	70	Crispy veg patty burger
6	10	2-Aloo pyaaz paratha	242	Served with curd
7	5	Tandoori chicken	249	1/2 kg ,Tandori marinated & spiced
8	1	Paneer paratha	90	2 pic
9	6	Veg grilled sandwich	100	2 pic with cheese
10	10	Veg Thali	350	shahi paneer,Dal makhani,Mix Veg,Rice,Raita,Butter roti,Gulab jamun,Onion
11	2	Grilled chicken Breast	550	146g protein,18g fat,2g fiber
12	8	Royal biryani	685	1 kg , slow cooked with tandoori spiced prawn
13	2	Lemon grill chicken	224	200g chicken breast
14	9	Achari paneer tikka	315	10 pic of paneer with green sauce
15	7	Murgh Malai seekh	660	Creamy kebabs made with spiced chicken keema
16	8	Falooda	137	15g , with Ice-cream
17	3	Chicken pepperoni pizza	850	1 medium, classic italian
18	4	Veg whopper	169	Signature veg patty whopper
19	6	Grilled Burger	85	Mouth watering taste
20	5	Butter Chicken Rara	425	full plate ,Butter chicken with minced butter chicken gravy
\.


--
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_details (id, order_id, quantity) FROM stdin;
1	1	2
2	2	5
3	5	3
4	4	1
5	7	2
6	12	4
7	9	10
8	3	3
9	10	4
10	8	1
\.


--
-- Data for Name: order_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_status (id, status, "time", order_id) FROM stdin;
1	Approved	2023-02-10 14:25:00	2
2	pending	2023-01-09 11:53:00	9
3	cancelled	2022-08-08 20:10:00	10
4	Approved	2022-09-22 19:11:00	12
5	Approved	2023-01-22 10:14:00	3
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, customer_id, created_at, menu_id) FROM stdin;
1	2	2023-02-08 17:10:00	19
2	5	2023-02-10 14:23:00	11
3	13	2023-01-22 10:13:00	12
4	9	2022-07-21 12:19:00	7
5	2	2023-01-17 15:03:00	8
6	15	2022-11-19 17:43:00	4
7	13	2022-03-28 11:24:00	8
8	3	2023-01-22 12:10:00	2
9	10	2023-01-09 11:51:00	7
10	1	2022-08-08 20:08:00	3
11	4	2023-02-01 16:13:00	7
12	11	2022-09-22 19:10:00	5
13	8	2022-03-29 13:20:00	14
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments (id, order_id, amount, "Date") FROM stdin;
1	2	2750	2023-02-10 14:25:00
2	9	2510	2023-01-09 11:53:00
3	3	2075	2022-08-08 20:10:00
4	10	1056	2022-09-22 19:11:00
5	12	320	2023-01-22 10:14:00
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ratings (id, menu_id, score, remarks, date, customer_id) FROM stdin;
1	1	4	amazing pizza	2020-10-07 00:00:00	2
2	2	3	average sandwich	2021-01-21 00:00:00	7
3	3	5	best biryani ever	2022-02-07 00:00:00	9
4	4	5	Awesome one	2022-01-12 00:00:00	10
5	5	2	Not satisfying	2021-09-17 00:00:00	5
6	17	4	nice pizza	2022-03-25 00:00:00	15
7	13	5	very tasty	2023-11-11 00:00:00	1
8	14	4	nice	2022-11-24 00:00:00	1
\.


--
-- Data for Name: restaurants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.restaurants (id, name, type, address, open_time, close_time, ratings) FROM stdin;
1	The Breakfast club	Veg	Neelam chowk	09:00:00	12:00:00	4
2	Happy Grillmore	non_veg	faridabad	17:00:00	23:00:00	3
3	Dominos	veg_and_non_veg	Bata chowk	10:00:00	23:00:00	5
4	Burger-king	veg_and_non_veg	Bata chowk	10:00:00	23:00:00	4
5	The Maharaja club	non_veg	Badarpur	11:00:00	22:00:00	3
6	The Indian Grill	Veg	Badarpur	11:00:00	22:00:00	5
7	Mughlai Darbar	non_veg	Delhi	10:00:00	21:00:00	5
8	Shahi Darbar	veg_and_non_veg	Delhi	09:00:00	22:00:00	4
9	Curry Kingdom	Veg	Faridabad	10:00:00	22:00:00	2
10	Dilli ki Rasoi	veg_and_non_veg	Delhi	11:30:00	23:00:00	4
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Name: cart_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_items_id_seq', 5, true);


--
-- Name: checkout_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.checkout_details_id_seq', 5, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 16, true);


--
-- Name: menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_items_id_seq', 20, true);


--
-- Name: order_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_details_id_seq', 10, true);


--
-- Name: order_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_status_id_seq', 5, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 13, true);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 5, true);


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ratings_id_seq', 8, true);


--
-- Name: restaurants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.restaurants_id_seq', 10, true);


--
-- Name: cart_items cart_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_pkey PRIMARY KEY (id);


--
-- Name: checkout_details checkout_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.checkout_details
    ADD CONSTRAINT checkout_details_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: menu_items menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);


--
-- Name: order_details order_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);


--
-- Name: order_status order_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_status
    ADD CONSTRAINT order_status_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- Name: restaurants restaurants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (id);


--
-- Name: cart_items cart_items_Customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT "cart_items_Customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: cart_items cart_items_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_menu_id_fkey FOREIGN KEY (menu_id) REFERENCES public.menu_items(id);


--
-- Name: checkout_details checkout_details_Order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.checkout_details
    ADD CONSTRAINT "checkout_details_Order_id_fkey" FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: menu_items menu_items_restaurant_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_restaurant_id_fkey FOREIGN KEY (restaurant_id) REFERENCES public.restaurants(id);


--
-- Name: order_details order_details_Order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT "order_details_Order_id_fkey" FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: order_status order_status_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_status
    ADD CONSTRAINT order_status_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: orders orders_Customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_Customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: orders orders_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_menu_id_fkey FOREIGN KEY (menu_id) REFERENCES public.menu_items(id);


--
-- Name: payments payments_Order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT "payments_Order_id_fkey" FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: ratings ratings_Customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_Customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: ratings ratings_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_menu_id_fkey FOREIGN KEY (menu_id) REFERENCES public.menu_items(id);


--
-- PostgreSQL database dump complete
--

