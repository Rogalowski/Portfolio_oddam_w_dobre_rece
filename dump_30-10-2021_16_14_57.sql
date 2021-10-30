--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE charity_donation;




--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md52a03a42547969c3d6d642a33470f3cd5';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Debian 13.2-1.pgdg100+1)
-- Dumped by pg_dump version 13.2 (Debian 13.2-1.pgdg100+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "charity_donation" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Debian 13.2-1.pgdg100+1)
-- Dumped by pg_dump version 13.2 (Debian 13.2-1.pgdg100+1)

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
-- Name: charity_donation; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE charity_donation WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE charity_donation OWNER TO postgres;

\connect charity_donation

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: charity_good_hands_app_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.charity_good_hands_app_category (
    id bigint NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.charity_good_hands_app_category OWNER TO postgres;

--
-- Name: charity_good_hands_app_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.charity_good_hands_app_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.charity_good_hands_app_category_id_seq OWNER TO postgres;

--
-- Name: charity_good_hands_app_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.charity_good_hands_app_category_id_seq OWNED BY public.charity_good_hands_app_category.id;


--
-- Name: charity_good_hands_app_donation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.charity_good_hands_app_donation (
    id bigint NOT NULL,
    quantity integer NOT NULL,
    address character varying(128) NOT NULL,
    phone_number integer NOT NULL,
    zip_code character varying(128) NOT NULL,
    pick_up_date date NOT NULL,
    pick_up_time timestamp with time zone NOT NULL,
    institution_id bigint NOT NULL,
    user_id bigint,
    pick_up_comment text NOT NULL,
    city character varying(128) NOT NULL,
    is_taken boolean NOT NULL
);


ALTER TABLE public.charity_good_hands_app_donation OWNER TO postgres;

--
-- Name: charity_good_hands_app_donation_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.charity_good_hands_app_donation_categories (
    id bigint NOT NULL,
    donation_id bigint NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.charity_good_hands_app_donation_categories OWNER TO postgres;

--
-- Name: charity_good_hands_app_donation_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.charity_good_hands_app_donation_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.charity_good_hands_app_donation_categories_id_seq OWNER TO postgres;

--
-- Name: charity_good_hands_app_donation_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.charity_good_hands_app_donation_categories_id_seq OWNED BY public.charity_good_hands_app_donation_categories.id;


--
-- Name: charity_good_hands_app_donation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.charity_good_hands_app_donation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.charity_good_hands_app_donation_id_seq OWNER TO postgres;

--
-- Name: charity_good_hands_app_donation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.charity_good_hands_app_donation_id_seq OWNED BY public.charity_good_hands_app_donation.id;


--
-- Name: charity_good_hands_app_institution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.charity_good_hands_app_institution (
    id bigint NOT NULL,
    name character varying(64) NOT NULL,
    type integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.charity_good_hands_app_institution OWNER TO postgres;

--
-- Name: charity_good_hands_app_institution_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.charity_good_hands_app_institution_categories (
    id bigint NOT NULL,
    institution_id bigint NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.charity_good_hands_app_institution_categories OWNER TO postgres;

--
-- Name: charity_good_hands_app_institution_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.charity_good_hands_app_institution_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.charity_good_hands_app_institution_categories_id_seq OWNER TO postgres;

--
-- Name: charity_good_hands_app_institution_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.charity_good_hands_app_institution_categories_id_seq OWNED BY public.charity_good_hands_app_institution_categories.id;


--
-- Name: charity_good_hands_app_institution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.charity_good_hands_app_institution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.charity_good_hands_app_institution_id_seq OWNER TO postgres;

--
-- Name: charity_good_hands_app_institution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.charity_good_hands_app_institution_id_seq OWNED BY public.charity_good_hands_app_institution.id;


--
-- Name: charity_good_hands_app_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.charity_good_hands_app_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    year_of_birth integer,
    is_email_verified boolean NOT NULL
);


ALTER TABLE public.charity_good_hands_app_user OWNER TO postgres;

--
-- Name: charity_good_hands_app_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.charity_good_hands_app_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.charity_good_hands_app_user_groups OWNER TO postgres;

--
-- Name: charity_good_hands_app_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.charity_good_hands_app_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.charity_good_hands_app_user_groups_id_seq OWNER TO postgres;

--
-- Name: charity_good_hands_app_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.charity_good_hands_app_user_groups_id_seq OWNED BY public.charity_good_hands_app_user_groups.id;


--
-- Name: charity_good_hands_app_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.charity_good_hands_app_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.charity_good_hands_app_user_id_seq OWNER TO postgres;

--
-- Name: charity_good_hands_app_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.charity_good_hands_app_user_id_seq OWNED BY public.charity_good_hands_app_user.id;


--
-- Name: charity_good_hands_app_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.charity_good_hands_app_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.charity_good_hands_app_user_user_permissions OWNER TO postgres;

--
-- Name: charity_good_hands_app_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.charity_good_hands_app_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.charity_good_hands_app_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: charity_good_hands_app_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.charity_good_hands_app_user_user_permissions_id_seq OWNED BY public.charity_good_hands_app_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: charity_good_hands_app_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_category ALTER COLUMN id SET DEFAULT nextval('public.charity_good_hands_app_category_id_seq'::regclass);


--
-- Name: charity_good_hands_app_donation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_donation ALTER COLUMN id SET DEFAULT nextval('public.charity_good_hands_app_donation_id_seq'::regclass);


--
-- Name: charity_good_hands_app_donation_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_donation_categories ALTER COLUMN id SET DEFAULT nextval('public.charity_good_hands_app_donation_categories_id_seq'::regclass);


--
-- Name: charity_good_hands_app_institution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_institution ALTER COLUMN id SET DEFAULT nextval('public.charity_good_hands_app_institution_id_seq'::regclass);


--
-- Name: charity_good_hands_app_institution_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_institution_categories ALTER COLUMN id SET DEFAULT nextval('public.charity_good_hands_app_institution_categories_id_seq'::regclass);


--
-- Name: charity_good_hands_app_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user ALTER COLUMN id SET DEFAULT nextval('public.charity_good_hands_app_user_id_seq'::regclass);


--
-- Name: charity_good_hands_app_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user_groups ALTER COLUMN id SET DEFAULT nextval('public.charity_good_hands_app_user_groups_id_seq'::regclass);


--
-- Name: charity_good_hands_app_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.charity_good_hands_app_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add category	7	add_category
26	Can change category	7	change_category
27	Can delete category	7	delete_category
28	Can view category	7	view_category
29	Can add institution	8	add_institution
30	Can change institution	8	change_institution
31	Can delete institution	8	delete_institution
32	Can view institution	8	view_institution
33	Can add donation	9	add_donation
34	Can change donation	9	change_donation
35	Can delete donation	9	delete_donation
36	Can view donation	9	view_donation
\.


--
-- Data for Name: charity_good_hands_app_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_category (id, name) FROM stdin;
2	ubrania, do wyrzucenia
3	zabawki
1	ubrania, które nadają się do ponownego użycia
4	książki
5	inne
6	test
\.


--
-- Data for Name: charity_good_hands_app_donation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_donation (id, quantity, address, phone_number, zip_code, pick_up_date, pick_up_time, institution_id, user_id, pick_up_comment, city, is_taken) FROM stdin;
1	11	Kasperski 20	112221333	74	2021-10-08	2021-10-09 17:04:29.842+00	1	1			f
2	4	Mikołaja 2	112221333	74	2021-10-08	2021-10-09 17:04:29.842+00	2	1			f
3	3	Mikołaja 2	112221333	74	2021-10-08	2021-10-09 17:04:29.842+00	2	1			f
11	3	vccxvxcvxc	234234	324234	2021-10-10	2021-10-10 15:19:35.499093+00	1	1	sdsdvs	sdfsd	f
6	3	vccxvxcvxc	234234	324234	2021-10-10	2021-10-10 15:14:28.505707+00	1	1	sdsdvs	sdfsd	f
9	3	vccxvxcvxc	234234	324234	2021-10-10	2021-10-10 15:18:48.278091+00	1	1	sdsdvs	sdfsd	f
10	3	vccxvxcvxc	234234	324234	2021-10-10	2021-10-10 15:19:12.587781+00	1	1	sdsdvs	sdfsd	f
7	3	vccxvxcvxc	234234	324234	2021-10-10	2021-10-10 15:15:31.626052+00	1	1	sdsdvs	sdfsd	f
8	3	vccxvxcvxc	234234	324234	2021-10-09	2021-10-10 15:18:27.354192+00	1	1	sdsdvs	sdfsd	f
15	13	werwe	234234	324234	2021-10-30	2021-10-17 19:55:39.336665+00	11	2	dfds	few	f
14	3	vccxvxcvxc	234234	324234	2021-10-12	2021-10-17 19:03:27.662266+00	10	2	sdsdvs	sdfsd	f
12	7	vccxvxcvxc	234234	324234	2021-10-02	2021-10-17 19:03:24.522693+00	5	2	sdsdvs	sdfsd	f
13	2	vccxvxcvxc	234234	324234	2021-10-17	2021-10-17 19:56:31.854352+00	8	2	sdsdvs	sdfsd	t
16	5	werwe	234234	324234	2021-10-17	2021-10-17 19:56:36.40781+00	7	2	dfds	few	t
21	5	sdfgsg	345345543	44555	2021-10-30	2021-10-30 13:33:25.737645+00	1	2	dfgdfg	dfgdfh	f
22	1	fthfh	456456456	55666	2021-10-30	2021-10-30 13:39:32.149191+00	2	2	hfg	fgh	f
23	2	345ert	44444444	34-435	2021-10-30	2021-10-30 13:40:15.026603+00	2	2	rtyry	ertert	f
24	2	fghfgh	456476548	56-456	2021-11-02	2021-10-30 13:42:59.017986+00	4	2	767	fghfgh	f
20	1	Rurka 20	785663945	74500	2021-10-30	2021-10-30 13:44:20.919972+00	4	2	tgrh	Chojna	t
\.


--
-- Data for Name: charity_good_hands_app_donation_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_donation_categories (id, donation_id, category_id) FROM stdin;
1	1	1
2	13	3
3	14	4
4	15	1
5	16	1
6	16	2
7	16	3
8	12	4
9	12	5
14	20	4
15	21	1
16	21	4
17	22	2
18	23	2
19	24	4
\.


--
-- Data for Name: charity_good_hands_app_institution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_institution (id, name, type, description) FROM stdin;
4	Life Surfers	1	Wakacyjna
5	Akademia Rozwoju	1	Rozwój osobisty
6	Razem	1	Dzieciom
2	Fundacja Tworzymy 	1	Równy start dla wszystkich
3	Fundacja Małych Stópek	1	BMS
1	Fundacja Aktywizacji Osób Niepełnosprawnych Agere 	1	\nDzieci z niepełnosprawnością , dorośli z niepełnosprawnością\n
12	Stowarzyszenie Ju Jitsu Shogun 	2	Wszyscy zainteresowani emigracją
13	Stowarzyszenie Animo - Odważ się żyć! 	2	Wszyscy zainteresowani , osoby chore , rodziny osób chorych, niepełnosprawnych 
14	Stowarzyszenie dla Dzieci i Młodzieży "SZANSA"\n	2	Organizacje pozarządowe , rodzina , dzieci, młodzież , kobiety , dzieci z niepełnosprawnością , ofiary przemocy, przestępstw, osoby w kryzysie 
15	Pomoc dla Izy Szarek	3	Lokalna pomoc dla Izy
16	Bratnia Pomoc Studentów Uniwersytetu Warszawskiego	3	Pomoc studentom
17	coderDojo Ząbkowice Śląskie	3	programowanie, warsztaty dla dzieci i dorosłych
18	Ochotnicza Straż Pożarna w Łączniku 	3	Zapomoga Ochotnicza Straż Pożarna  
19	Bezpieczna i Przyjazna Kolej 	3	Łódź - Rozwój lokalny , ekologia 
20	Kultura Od Nowa 	3	Nowy Sącz kulturalny
21	Białoruski Dom w Warszawie 	3	Uchodźcy, migranci, repatrianci
22	Pomoc Rafałowi	3	Koń Rafał potrzebuje pomocy
7	Fundusz POMOCOWY	2	Polskiej Fundacji Muzycznej
23	WOŚP	2	Wielka Orkiestra Świątecznej Pomocy
11	Stowarzyszenie Dostawcy Pomocy 	2	Osoby w kryzysie bezdomności , osoby skrajnie ubogie 
8	Wsparcie i Pomoc Pokolenia 	2	Wszyscy zainteresowani , społeczność lokalna , rodzina , dzieci, młodzież , kobiety , samotne matki (ojcowie) , osoby uzależnione od alkoholu , osoby uzależnione od narkotyków , ofiary przemocy, przestępstw, osoby w kryzysie , osoby w kryzysie bezdomności , osoby skrajnie ubogie , osoby starsze, kombatanci , więźniowie, byli więźniowie 
9	"ONI" to MY !!!	2	Wsparcie I Pomoc Pokolenia NASZEGO POKOLENIA! dla SENIORÓW
10	Stowarzyszenie Bezpieczna i Przyjazna Kolej 	2	ekologia 
24	Jacek	3	asdasd
\.


--
-- Data for Name: charity_good_hands_app_institution_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_institution_categories (id, institution_id, category_id) FROM stdin;
1	1	1
3	2	3
2	1	5
4	2	4
5	3	1
6	3	3
7	4	5
8	4	1
9	5	4
10	5	3
11	6	3
12	6	5
13	7	1
14	7	2
15	8	4
16	8	3
17	9	5
18	9	1
19	10	4
20	10	5
21	11	2
22	11	1
23	12	5
24	12	4
25	13	4
26	13	1
27	14	1
28	14	2
29	15	3
30	15	4
31	16	5
32	16	1
33	17	2
34	17	3
35	18	4
36	18	5
37	19	2
38	19	3
39	20	1
40	20	4
41	21	5
42	21	4
43	22	5
44	22	3
45	23	2
46	23	1
\.


--
-- Data for Name: charity_good_hands_app_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, year_of_birth, is_email_verified) FROM stdin;
1	admin	\N	t	admin	admin	admin	admin@admin.com	t	t	2021-10-08 17:05:21.022+00	1993	f
3	pbkdf2_sha256$260000$rsJSzcHKQTpHi22vO8FBVz$RvWL9qrPXDEldpVZAXiSIYRjNsUqosGE5H5owAIKkGE=	\N	f	dsv@o2.pl	cds		dsv@o2.pl	f	t	2021-10-09 11:47:05.909809+00	\N	f
6	pbkdf2_sha256$260000$3rxQ4wXP0m7OPIuneATPvm$4pjvBaYozssCP0NOR2UE0wMukuUPPppmfw7LLGTeMEo=	\N	f	sdfs@asdas.com	sd	sdf	sdfs@asdas.com	f	t	2021-10-09 12:10:50.872485+00	\N	f
7	pbkdf2_sha256$260000$CKFHqdcs4ipJwO0DUrRDAa$OLVpj9T3DocUZK2tG8Lf/T6JtA6kvpd73xlSfROJe0w=	2021-10-09 12:38:28.605398+00	f	aaaa@aaa.com	aa	aa	aaaa@aaa.com	f	t	2021-10-09 12:38:19.313199+00	\N	f
23	pbkdf2_sha256$260000$deIJtSNHBiFunZOsqLtbAn$ombQMFJ7FnEVGy5Z+mVtjbeNE0sXt8jUlxarkc/mi38=	2021-10-10 17:52:55.734461+00	t	it_jacek@jacek.com	it_jacek	it_jacek	it_jacek@jacek.com	t	t	2021-10-10 17:50:56+00	4	f
21	pbkdf2_sha256$260000$2TCAkuYz5iEyhPrPaab9Ge$df6VdeRbxEZKelWKOIw0lY0g6cC2923Q3ONmbItjGwM=	2021-10-10 18:30:03.641798+00	t	root@root.com	Root		root@root.com	t	t	2021-10-10 15:40:04.764533+00	\N	f
25	pbkdf2_sha256$260000$ZKtijNEcRTQ3FRvkz4ChZu$vWe5wnXcBMdxM2vICSNefRZ4OAcV2iyQNt8ElKy2BCU=	\N	f	dfgdfg@o2.pl	gggg	gfdgdf	dfgdfg@o2.pl	f	f	2021-10-30 13:46:02.142165+00	\N	f
2	pbkdf2_sha256$260000$1M3Badr2ViyVXODCoH7wIY$HCAKu5u9ahg5FfI8Sbf4NXOHRXK6prVFQOsYK92O8Q4=	2021-10-30 13:32:06.59047+00	f	jacek@jacek.com	Ja CEK	Rogo	jacek@jacek.com	f	t	2021-10-09 11:46:28.781125+00	1111	t
8	pbkdf2_sha256$260000$1M3Badr2ViyVXODCoH7wIY$HCAKu5u9ahg5FfI8Sbf4NXOHRXK6prVFQOsYK92O8Q4=	2021-10-09 15:59:04.49013+00	t	rogalowski@gmail.com	Jacek	Rogowski	rogalowski@gmail.com	t	t	2021-10-09 15:59:00.646787+00	1	t
\.


--
-- Data for Name: charity_good_hands_app_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: charity_good_hands_app_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-10-10 17:47:52.043885+00	22	it_jacek@jacek.com	1	[{"added": {}}]	6	21
2	2021-10-10 17:49:23.349653+00	22	itjacek@jacek.com	2	[{"changed": {"fields": ["Username", "First name", "Email address"]}}]	6	21
3	2021-10-10 17:50:30.926935+00	22	itjacek@jacek.com	2	[{"changed": {"fields": ["Password"]}}]	6	21
4	2021-10-10 17:50:52.451588+00	22	itjacek@jacek.com	3		6	21
5	2021-10-10 17:51:37.205448+00	23	it_jacek	1	[{"added": {}}]	6	21
6	2021-10-10 17:51:46.544705+00	23	it_jacek@jacek.com	2	[{"changed": {"fields": ["Username"]}}]	6	21
7	2021-10-10 17:52:46.423765+00	23	it_jacek@jacek.com	2	[{"changed": {"fields": ["Staff status"]}}]	6	21
8	2021-10-10 17:55:46.200886+00	24	Jacek	1	[{"added": {}}]	8	23
9	2021-10-10 17:55:54.225908+00	24	Jacek	2	[{"changed": {"fields": ["Categories"]}}]	8	23
10	2021-10-10 17:57:02.131113+00	24	Jacek	2	[{"changed": {"fields": ["Categories"]}}]	8	23
11	2021-10-10 17:57:36.002787+00	24	Jacek	2	[{"changed": {"fields": ["Categories"]}}]	8	23
12	2021-10-10 17:58:44.261913+00	24	Jacek	2	[{"changed": {"fields": ["Categories"]}}]	8	23
13	2021-10-10 17:59:20.984231+00	6	test	1	[{"added": {}}]	7	23
14	2021-10-10 17:59:24.548606+00	24	Jacek	2	[{"changed": {"fields": ["Categories"]}}]	8	23
15	2021-10-10 18:00:04.974849+00	12	Donation object (12)	2	[{"changed": {"fields": ["Categories"]}}]	9	23
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	charity_good_hands_app	user
7	charity_good_hands_app	category
8	charity_good_hands_app	institution
9	charity_good_hands_app	donation
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-10-08 12:23:56.175983+00
2	contenttypes	0002_remove_content_type_name	2021-10-08 12:23:56.184904+00
3	auth	0001_initial	2021-10-08 12:23:56.224877+00
4	auth	0002_alter_permission_name_max_length	2021-10-08 12:23:56.230768+00
5	auth	0003_alter_user_email_max_length	2021-10-08 12:23:56.238339+00
6	auth	0004_alter_user_username_opts	2021-10-08 12:23:56.245547+00
7	auth	0005_alter_user_last_login_null	2021-10-08 12:23:56.252237+00
8	auth	0006_require_contenttypes_0002	2021-10-08 12:23:56.254893+00
9	auth	0007_alter_validators_add_error_messages	2021-10-08 12:23:56.261952+00
10	auth	0008_alter_user_username_max_length	2021-10-08 12:23:56.268448+00
11	auth	0009_alter_user_last_name_max_length	2021-10-08 12:23:56.276516+00
12	auth	0010_alter_group_name_max_length	2021-10-08 12:23:56.284017+00
13	auth	0011_update_proxy_permissions	2021-10-08 12:23:56.290657+00
14	auth	0012_alter_user_first_name_max_length	2021-10-08 12:23:56.297231+00
15	charity_good_hands_app	0001_initial	2021-10-08 12:23:56.383912+00
16	admin	0001_initial	2021-10-08 12:23:56.409333+00
17	admin	0002_logentry_remove_auto_add	2021-10-08 12:23:56.422734+00
18	admin	0003_logentry_add_action_flag_choices	2021-10-08 12:23:56.433809+00
19	sessions	0001_initial	2021-10-08 12:23:56.446536+00
20	charity_good_hands_app	0002_alter_institution_type	2021-10-08 14:55:07.30461+00
21	charity_good_hands_app	0003_auto_20211008_1905	2021-10-08 19:05:49.162271+00
22	charity_good_hands_app	0004_donation_city	2021-10-10 14:23:46.684318+00
23	charity_good_hands_app	0005_auto_20211017_1844	2021-10-17 18:44:45.254234+00
25	charity_good_hands_app	0006_user_is_email_verified	2021-10-30 13:24:43.144583+00
26	charity_good_hands_app	0007_alter_donation_zip_code	2021-10-30 13:24:43.17094+00
27	charity_good_hands_app	0008_alter_donation_pick_up_date	2021-10-30 13:42:04.438092+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
wb9p28tis2udisx4hljtpyt0ba8ur7c6	.eJxVjEEOwiAQAP_C2ZBCod316N03kAUWqRpISnsy_l1JetDrzGRewtG-Zbc3Xt0SxVlocfplnsKDSxfxTuVWZahlWxcveyIP2-S1Rn5ejvZvkKnlvgU1Gh7iTIgJfCALRCOokIgxzUyDRxwnZK1Igf0W2hjQliAFHScW7w_wWjhD:1mZddM:gS1LKB2LPG3rqcKe3Llgpny6Y0elRjMLc1-aT_ZGJME	2021-10-24 18:33:16.898839+00
niiyfucsqhkxr8xcfvm7r9st7wrmb2dz	.eJxVjMsOwiAQRf-FtSHDtDzq0r3fQBgYpGogKe3K-O_apAvd3nPOfQkftrX4rfPi5yTOAsXpd6MQH1x3kO6h3pqMra7LTHJX5EG7vLbEz8vh_h2U0Mu3tqycNtmBQ6NJDQAuKxXsqBAmRGCYhkTaEKKJo2HIaK3GiNnRAGTF-wOecjZB:1mc7wW:yJ5JeTP2vh-sLTWTstDUB3KTSaAd9nX9lH8amnjO-WQ	2021-10-31 15:19:20.823564+00
g25j3fzc0t0xhcun68l4duz3d91dool6	.eJxVjMsOwiAQRf-FtSHDtDzq0r3fQBgYpGogKe3K-O_apAvd3nPOfQkftrX4rfPi5yTOAsXpd6MQH1x3kO6h3pqMra7LTHJX5EG7vLbEz8vh_h2U0Mu3tqycNtmBQ6NJDQAuKxXsqBAmRGCYhkTaEKKJo2HIaK3GiNnRAGTF-wOecjZB:1mgoSs:LLvk4mzdVoJL5JpnxzQiTtXjj8qvCjLpoiKupN8I4fA	2021-11-13 13:32:06.592265+00
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: charity_good_hands_app_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_category_id_seq', 6, true);


--
-- Name: charity_good_hands_app_donation_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_donation_categories_id_seq', 19, true);


--
-- Name: charity_good_hands_app_donation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_donation_id_seq', 24, true);


--
-- Name: charity_good_hands_app_institution_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_institution_categories_id_seq', 11, true);


--
-- Name: charity_good_hands_app_institution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_institution_id_seq', 24, true);


--
-- Name: charity_good_hands_app_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_user_groups_id_seq', 1, false);


--
-- Name: charity_good_hands_app_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_user_id_seq', 25, true);


--
-- Name: charity_good_hands_app_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 15, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: charity_good_hands_app_category charity_good_hands_app_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_category
    ADD CONSTRAINT charity_good_hands_app_category_pkey PRIMARY KEY (id);


--
-- Name: charity_good_hands_app_donation_categories charity_good_hands_app_d_donation_id_category_id_570a069c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_donation_categories
    ADD CONSTRAINT charity_good_hands_app_d_donation_id_category_id_570a069c_uniq UNIQUE (donation_id, category_id);


--
-- Name: charity_good_hands_app_donation_categories charity_good_hands_app_donation_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_donation_categories
    ADD CONSTRAINT charity_good_hands_app_donation_categories_pkey PRIMARY KEY (id);


--
-- Name: charity_good_hands_app_donation charity_good_hands_app_donation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_donation
    ADD CONSTRAINT charity_good_hands_app_donation_pkey PRIMARY KEY (id);


--
-- Name: charity_good_hands_app_institution_categories charity_good_hands_app_i_institution_id_category__6148190b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_institution_categories
    ADD CONSTRAINT charity_good_hands_app_i_institution_id_category__6148190b_uniq UNIQUE (institution_id, category_id);


--
-- Name: charity_good_hands_app_institution_categories charity_good_hands_app_institution_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_institution_categories
    ADD CONSTRAINT charity_good_hands_app_institution_categories_pkey PRIMARY KEY (id);


--
-- Name: charity_good_hands_app_institution charity_good_hands_app_institution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_institution
    ADD CONSTRAINT charity_good_hands_app_institution_pkey PRIMARY KEY (id);


--
-- Name: charity_good_hands_app_user_groups charity_good_hands_app_u_user_id_group_id_a93affaf_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user_groups
    ADD CONSTRAINT charity_good_hands_app_u_user_id_group_id_a93affaf_uniq UNIQUE (user_id, group_id);


--
-- Name: charity_good_hands_app_user_user_permissions charity_good_hands_app_u_user_id_permission_id_2e2e2594_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user_user_permissions
    ADD CONSTRAINT charity_good_hands_app_u_user_id_permission_id_2e2e2594_uniq UNIQUE (user_id, permission_id);


--
-- Name: charity_good_hands_app_user_groups charity_good_hands_app_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user_groups
    ADD CONSTRAINT charity_good_hands_app_user_groups_pkey PRIMARY KEY (id);


--
-- Name: charity_good_hands_app_user charity_good_hands_app_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user
    ADD CONSTRAINT charity_good_hands_app_user_pkey PRIMARY KEY (id);


--
-- Name: charity_good_hands_app_user_user_permissions charity_good_hands_app_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user_user_permissions
    ADD CONSTRAINT charity_good_hands_app_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: charity_good_hands_app_user charity_good_hands_app_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user
    ADD CONSTRAINT charity_good_hands_app_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: charity_good_hands_app_donation_categories_category_id_57a6b0aa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX charity_good_hands_app_donation_categories_category_id_57a6b0aa ON public.charity_good_hands_app_donation_categories USING btree (category_id);


--
-- Name: charity_good_hands_app_donation_categories_donation_id_6220708b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX charity_good_hands_app_donation_categories_donation_id_6220708b ON public.charity_good_hands_app_donation_categories USING btree (donation_id);


--
-- Name: charity_good_hands_app_donation_institution_id_5f5ea96b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX charity_good_hands_app_donation_institution_id_5f5ea96b ON public.charity_good_hands_app_donation USING btree (institution_id);


--
-- Name: charity_good_hands_app_donation_user_id_2cc7aada; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX charity_good_hands_app_donation_user_id_2cc7aada ON public.charity_good_hands_app_donation USING btree (user_id);


--
-- Name: charity_good_hands_app_ins_category_id_e73bc916; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX charity_good_hands_app_ins_category_id_e73bc916 ON public.charity_good_hands_app_institution_categories USING btree (category_id);


--
-- Name: charity_good_hands_app_ins_institution_id_ae745edc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX charity_good_hands_app_ins_institution_id_ae745edc ON public.charity_good_hands_app_institution_categories USING btree (institution_id);


--
-- Name: charity_good_hands_app_use_permission_id_dcdd7959; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX charity_good_hands_app_use_permission_id_dcdd7959 ON public.charity_good_hands_app_user_user_permissions USING btree (permission_id);


--
-- Name: charity_good_hands_app_user_groups_group_id_f7cc6e15; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX charity_good_hands_app_user_groups_group_id_f7cc6e15 ON public.charity_good_hands_app_user_groups USING btree (group_id);


--
-- Name: charity_good_hands_app_user_groups_user_id_1865b605; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX charity_good_hands_app_user_groups_user_id_1865b605 ON public.charity_good_hands_app_user_groups USING btree (user_id);


--
-- Name: charity_good_hands_app_user_user_permissions_user_id_c5a19f7f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX charity_good_hands_app_user_user_permissions_user_id_c5a19f7f ON public.charity_good_hands_app_user_user_permissions USING btree (user_id);


--
-- Name: charity_good_hands_app_user_username_34defb69_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX charity_good_hands_app_user_username_34defb69_like ON public.charity_good_hands_app_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: charity_good_hands_app_donation_categories charity_good_hands_a_category_id_57a6b0aa_fk_charity_g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_donation_categories
    ADD CONSTRAINT charity_good_hands_a_category_id_57a6b0aa_fk_charity_g FOREIGN KEY (category_id) REFERENCES public.charity_good_hands_app_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: charity_good_hands_app_institution_categories charity_good_hands_a_category_id_e73bc916_fk_charity_g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_institution_categories
    ADD CONSTRAINT charity_good_hands_a_category_id_e73bc916_fk_charity_g FOREIGN KEY (category_id) REFERENCES public.charity_good_hands_app_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: charity_good_hands_app_donation_categories charity_good_hands_a_donation_id_6220708b_fk_charity_g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_donation_categories
    ADD CONSTRAINT charity_good_hands_a_donation_id_6220708b_fk_charity_g FOREIGN KEY (donation_id) REFERENCES public.charity_good_hands_app_donation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: charity_good_hands_app_user_groups charity_good_hands_a_group_id_f7cc6e15_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user_groups
    ADD CONSTRAINT charity_good_hands_a_group_id_f7cc6e15_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: charity_good_hands_app_donation charity_good_hands_a_institution_id_5f5ea96b_fk_charity_g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_donation
    ADD CONSTRAINT charity_good_hands_a_institution_id_5f5ea96b_fk_charity_g FOREIGN KEY (institution_id) REFERENCES public.charity_good_hands_app_institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: charity_good_hands_app_institution_categories charity_good_hands_a_institution_id_ae745edc_fk_charity_g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_institution_categories
    ADD CONSTRAINT charity_good_hands_a_institution_id_ae745edc_fk_charity_g FOREIGN KEY (institution_id) REFERENCES public.charity_good_hands_app_institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: charity_good_hands_app_user_user_permissions charity_good_hands_a_permission_id_dcdd7959_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user_user_permissions
    ADD CONSTRAINT charity_good_hands_a_permission_id_dcdd7959_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: charity_good_hands_app_user_groups charity_good_hands_a_user_id_1865b605_fk_charity_g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user_groups
    ADD CONSTRAINT charity_good_hands_a_user_id_1865b605_fk_charity_g FOREIGN KEY (user_id) REFERENCES public.charity_good_hands_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: charity_good_hands_app_donation charity_good_hands_a_user_id_2cc7aada_fk_charity_g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_donation
    ADD CONSTRAINT charity_good_hands_a_user_id_2cc7aada_fk_charity_g FOREIGN KEY (user_id) REFERENCES public.charity_good_hands_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: charity_good_hands_app_user_user_permissions charity_good_hands_a_user_id_c5a19f7f_fk_charity_g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charity_good_hands_app_user_user_permissions
    ADD CONSTRAINT charity_good_hands_a_user_id_c5a19f7f_fk_charity_g FOREIGN KEY (user_id) REFERENCES public.charity_good_hands_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_charity_g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_charity_g FOREIGN KEY (user_id) REFERENCES public.charity_good_hands_app_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Debian 13.2-1.pgdg100+1)
-- Dumped by pg_dump version 13.2 (Debian 13.2-1.pgdg100+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

