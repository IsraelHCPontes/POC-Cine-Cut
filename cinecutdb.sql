PGDMP                          {            cinecut    15.1 (Homebrew)    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    43536    cinecut    DATABASE     i   CREATE DATABASE cinecut WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE cinecut;
                postgres    false            �            1259    43548    movie    TABLE     �   CREATE TABLE public.movie (
    id integer NOT NULL,
    name text NOT NULL,
    image text NOT NULL,
    director text NOT NULL,
    score integer NOT NULL
);
    DROP TABLE public.movie;
       public         heap    postgres    false            �            1259    43547    movie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.movie_id_seq;
       public          postgres    false    215                       0    0    movie_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.movie_id_seq OWNED BY public.movie.id;
          public          postgres    false    214            }           2604    43551    movie id    DEFAULT     d   ALTER TABLE ONLY public.movie ALTER COLUMN id SET DEFAULT nextval('public.movie_id_seq'::regclass);
 7   ALTER TABLE public.movie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    43548    movie 
   TABLE DATA           A   COPY public.movie (id, name, image, director, score) FROM stdin;
    public          postgres    false    215   [
                  0    0    movie_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.movie_id_seq', 4, true);
          public          postgres    false    214                       2606    43555    movie movie_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_pk;
       public            postgres    false    215               �   x���A�0��u9hڪ��{���L��vH�zz��p�6�g�eC��"�z������'�&p2�(K!�Ӿ�lӞ��`��ď�0��3�d��-�DMI��H��w�;z�wmw��Ϳ���QM�h�&,��VN���@X�(\m��4���������y     