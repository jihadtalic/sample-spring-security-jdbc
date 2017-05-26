--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


SET search_path = public, pg_catalog;

--
-- Name: isactive; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE isactive AS ENUM (
    'True',
    'False'
);


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE roles (
    id integer NOT NULL,
    role character varying(45) NOT NULL
);


--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: user_details; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE user_details (
    user_id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    company_name character varying,
    id integer NOT NULL
);


--
-- Name: user_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE user_details_id_seq OWNED BY user_details.id;


--
-- Name: user_details_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_details_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_details_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE user_details_user_id_seq OWNED BY user_details.user_id;


--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE user_roles (
    id integer NOT NULL,
    user_id integer NOT NULL,
    role_id integer NOT NULL
);


--
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE user_roles_id_seq OWNED BY user_roles.id;


--
-- Name: user_roles_role_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_roles_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_roles_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE user_roles_role_id_seq OWNED BY user_roles.role_id;


--
-- Name: user_roles_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_roles_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_roles_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE user_roles_user_id_seq OWNED BY user_roles.user_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    password character varying(60) NOT NULL,
    username character varying(45) NOT NULL,
    isactive isactive DEFAULT 'True'::isactive
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_details ALTER COLUMN user_id SET DEFAULT nextval('user_details_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_details ALTER COLUMN id SET DEFAULT nextval('user_details_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_roles ALTER COLUMN id SET DEFAULT nextval('user_roles_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_roles ALTER COLUMN user_id SET DEFAULT nextval('user_roles_user_id_seq'::regclass);


--
-- Name: role_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY user_roles ALTER COLUMN role_id SET DEFAULT nextval('user_roles_role_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY roles (id, role) FROM stdin;
1	ROLE_BUYER
2	ROLE_SELLER
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('roles_id_seq', 2, true);


--
-- Data for Name: user_details; Type: TABLE DATA; Schema: public; Owner: -
--

COPY user_details (user_id, first_name, last_name, company_name, id) FROM stdin;
1	Buyer	Sample	SampleBuyers, Inc.	1
2	Roel	Sinadjan	VisTracks	2
3	Disabled	User	Some Company	3
\.


--
-- Name: user_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('user_details_id_seq', 3, true);


--
-- Name: user_details_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('user_details_user_id_seq', 1, false);


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY user_roles (id, user_id, role_id) FROM stdin;
1	1	1
2	2	1
3	2	2
4	3	1
\.


--
-- Name: user_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('user_roles_id_seq', 4, true);


--
-- Name: user_roles_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('user_roles_role_id_seq', 1, false);


--
-- Name: user_roles_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('user_roles_user_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY users (id, password, username, isactive) FROM stdin;
2	2e7464a5e9bac192f1251866fea0c255db0cbd83	roel.sinadjan@vistracks.com	True
1	9b165e49da3c5629a2dce8f7d7abbdd7025973d5	buyer@sample.com	True
3	07596f183f5e91b1778d5e47b2752b8d42aa763d	disabled@sample.com	False
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('users_id_seq', 3, true);


--
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: user_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (id);


--
-- Name: user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

