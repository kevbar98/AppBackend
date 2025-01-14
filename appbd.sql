PGDMP     $                    |            appbd    15.6    15.6     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16398    appbd    DATABASE     x   CREATE DATABASE appbd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE appbd;
                postgres    false            �            1259    16403 	   employees    TABLE     �  CREATE TABLE public.employees (
    id integer NOT NULL,
    nombre character varying(255),
    apellido character varying(255),
    usuario character varying(255) NOT NULL,
    password character varying(255),
    tipoidentificacion character varying(20) NOT NULL,
    CONSTRAINT check_tipoidentificacion CHECK (((tipoidentificacion)::text = ANY ((ARRAY['cedula'::character varying, 'ruc'::character varying, 'pasaporte'::character varying])::text[])))
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    16402    employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.employee_id_seq;
       public          postgres    false    215                       0    0    employee_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.employee_id_seq OWNED BY public.employees.id;
          public          postgres    false    214            e           2604    16406    employees id    DEFAULT     k   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �          0    16403 	   employees 
   TABLE DATA           `   COPY public.employees (id, nombre, apellido, usuario, password, tipoidentificacion) FROM stdin;
    public          postgres    false    215   a                  0    0    employee_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.employee_id_seq', 19, true);
          public          postgres    false    214            h           2606    16412 +   employees employee_numeroidentificacion_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employee_numeroidentificacion_key UNIQUE (usuario);
 U   ALTER TABLE ONLY public.employees DROP CONSTRAINT employee_numeroidentificacion_key;
       public            postgres    false    215            j           2606    16410    employees employee_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.employees DROP CONSTRAINT employee_pkey;
       public            postgres    false    215            �   �   x�u��k�0����3��I���v�n��4�@LGՃ��Dh:�w���U`�iH>F���КbM%R��(`������O�r���Cr7�jŅ��N�w�1�C�J>Qb�44n���n�1����+ʌ�>��Q
��pzcخY������V�9����x���C�A�,��-�k�>;�RP����/�=H�����o�5-0)P*�j:U?/��+�w�     