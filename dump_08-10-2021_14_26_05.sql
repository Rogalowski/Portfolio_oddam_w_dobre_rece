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
    zip_code integer NOT NULL,
    pick_up_date date NOT NULL,
    pick_up_time timestamp with time zone NOT NULL,
    institution_id bigint NOT NULL,
    user_id bigint
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
    type integer NOT NULL
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
    year_of_birth integer
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
\.


--
-- Data for Name: charity_good_hands_app_donation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_donation (id, quantity, address, phone_number, zip_code, pick_up_date, pick_up_time, institution_id, user_id) FROM stdin;
\.


--
-- Data for Name: charity_good_hands_app_donation_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_donation_categories (id, donation_id, category_id) FROM stdin;
\.


--
-- Data for Name: charity_good_hands_app_institution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_institution (id, name, type) FROM stdin;
\.


--
-- Data for Name: charity_good_hands_app_institution_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_institution_categories (id, institution_id, category_id) FROM stdin;
\.


--
-- Data for Name: charity_good_hands_app_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charity_good_hands_app_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, year_of_birth) FROM stdin;
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
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
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

SELECT pg_catalog.setval('public.charity_good_hands_app_category_id_seq', 1, false);


--
-- Name: charity_good_hands_app_donation_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_donation_categories_id_seq', 1, false);


--
-- Name: charity_good_hands_app_donation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_donation_id_seq', 1, false);


--
-- Name: charity_good_hands_app_institution_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_institution_categories_id_seq', 1, false);


--
-- Name: charity_good_hands_app_institution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_institution_id_seq', 1, false);


--
-- Name: charity_good_hands_app_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_user_groups_id_seq', 1, false);


--
-- Name: charity_good_hands_app_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_user_id_seq', 1, false);


--
-- Name: charity_good_hands_app_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charity_good_hands_app_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


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

