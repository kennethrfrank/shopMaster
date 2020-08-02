PGDMP     6                    x           shopDB    10.1    12.3 :    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    16664    shopDB    DATABASE     �   CREATE DATABASE "shopDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "shopDB";
                postgres    false            �            1259    16876    address    TABLE     �   CREATE TABLE public.address (
    addressid integer NOT NULL,
    customerid integer,
    streetaddress text,
    aptnumber text,
    country text,
    state text,
    addresstype text
);
    DROP TABLE public.address;
       public            postgres    false            �            1259    16874    address_addressid_seq    SEQUENCE     �   CREATE SEQUENCE public.address_addressid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.address_addressid_seq;
       public          postgres    false    209            ;           0    0    address_addressid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.address_addressid_seq OWNED BY public.address.addressid;
          public          postgres    false    208            �            1259    16838    cart    TABLE     {   CREATE TABLE public.cart (
    id integer NOT NULL,
    customerid integer,
    datecreated timestamp without time zone
);
    DROP TABLE public.cart;
       public            postgres    false            �            1259    16836    cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cart_id_seq;
       public          postgres    false    205            <           0    0    cart_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;
          public          postgres    false    204            �            1259    16825    category    TABLE     b   CREATE TABLE public.category (
    id integer NOT NULL,
    categoryname character varying(77)
);
    DROP TABLE public.category;
       public            postgres    false            �            1259    16823    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    203            =           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    202            �            1259    16759    customer    TABLE     �   CREATE TABLE public.customer (
    customerid integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    email character varying(50),
    phonenumber character varying(15)
);
    DROP TABLE public.customer;
       public            postgres    false            �            1259    16757    customer_customerid_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.customer_customerid_seq;
       public          postgres    false    199            >           0    0    customer_customerid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.customer_customerid_seq OWNED BY public.customer.customerid;
          public          postgres    false    198            �            1259    16809 
   nclynation    TABLE     f   CREATE TABLE public.nclynation (
    id integer NOT NULL,
    nclynationname character varying(50)
);
    DROP TABLE public.nclynation;
       public            postgres    false            �            1259    16807    nclynations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nclynations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.nclynations_id_seq;
       public          postgres    false    201            ?           0    0    nclynations_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.nclynations_id_seq OWNED BY public.nclynation.id;
          public          postgres    false    200            �            1259    16851    orders    TABLE     y   CREATE TABLE public.orders (
    id integer NOT NULL,
    productid integer,
    cartid integer,
    quantity integer
);
    DROP TABLE public.orders;
       public            postgres    false            �            1259    16849    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    207            @           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    206            �            1259    16748    product    TABLE     �   CREATE TABLE public.product (
    productid integer NOT NULL,
    productname character varying(50),
    productdescription character varying(400),
    productquantity integer,
    productprice numeric,
    productimage bytea,
    categoryid integer
);
    DROP TABLE public.product;
       public            postgres    false            �            1259    16746    product_productid_seq    SEQUENCE     �   CREATE SEQUENCE public.product_productid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_productid_seq;
       public          postgres    false    197            A           0    0    product_productid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_productid_seq OWNED BY public.product.productid;
          public          postgres    false    196            �
           2604    16879    address addressid    DEFAULT     v   ALTER TABLE ONLY public.address ALTER COLUMN addressid SET DEFAULT nextval('public.address_addressid_seq'::regclass);
 @   ALTER TABLE public.address ALTER COLUMN addressid DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    16841    cart id    DEFAULT     b   ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);
 6   ALTER TABLE public.cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16828    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    16762    customer customerid    DEFAULT     z   ALTER TABLE ONLY public.customer ALTER COLUMN customerid SET DEFAULT nextval('public.customer_customerid_seq'::regclass);
 B   ALTER TABLE public.customer ALTER COLUMN customerid DROP DEFAULT;
       public          postgres    false    198    199    199            �
           2604    16812    nclynation id    DEFAULT     o   ALTER TABLE ONLY public.nclynation ALTER COLUMN id SET DEFAULT nextval('public.nclynations_id_seq'::regclass);
 <   ALTER TABLE public.nclynation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �
           2604    16854 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    16751    product productid    DEFAULT     v   ALTER TABLE ONLY public.product ALTER COLUMN productid SET DEFAULT nextval('public.product_productid_seq'::regclass);
 @   ALTER TABLE public.product ALTER COLUMN productid DROP DEFAULT;
       public          postgres    false    197    196    197            4          0    16876    address 
   TABLE DATA                 public          postgres    false    209   �<       0          0    16838    cart 
   TABLE DATA                 public          postgres    false    205   }B       .          0    16825    category 
   TABLE DATA                 public          postgres    false    203   tX       *          0    16759    customer 
   TABLE DATA                 public          postgres    false    199   �X       ,          0    16809 
   nclynation 
   TABLE DATA                 public          postgres    false    201    _       2          0    16851    orders 
   TABLE DATA                 public          postgres    false    207   �_       (          0    16748    product 
   TABLE DATA                 public          postgres    false    197   �h       B           0    0    address_addressid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.address_addressid_seq', 168, true);
          public          postgres    false    208            C           0    0    cart_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cart_id_seq', 626, true);
          public          postgres    false    204            D           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    202            E           0    0    customer_customerid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customerid_seq', 685, true);
          public          postgres    false    198            F           0    0    nclynations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.nclynations_id_seq', 4, true);
          public          postgres    false    200            G           0    0    orders_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.orders_id_seq', 892, true);
          public          postgres    false    206            H           0    0    product_productid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_productid_seq', 4, true);
          public          postgres    false    196            �
           2606    16884    address address_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (addressid);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    209            �
           2606    16843    cart cart_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    205            �
           2606    16830    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    203            �
           2606    16764    customer customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customerid);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    199            �
           2606    16814    nclynation nclynations_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.nclynation
    ADD CONSTRAINT nclynations_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.nclynation DROP CONSTRAINT nclynations_pkey;
       public            postgres    false    201            �
           2606    16856    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    207            �
           2606    16756    product product_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (productid);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    197            �
           2606    16885    address address_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customer(customerid);
 I   ALTER TABLE ONLY public.address DROP CONSTRAINT address_customerid_fkey;
       public          postgres    false    199    2718    209            �
           2606    16862    orders cartid    FK CONSTRAINT     j   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT cartid FOREIGN KEY (cartid) REFERENCES public.cart(id);
 7   ALTER TABLE ONLY public.orders DROP CONSTRAINT cartid;
       public          postgres    false    2724    207    205            �
           2606    16831    product categoryid    FK CONSTRAINT     w   ALTER TABLE ONLY public.product
    ADD CONSTRAINT categoryid FOREIGN KEY (categoryid) REFERENCES public.category(id);
 <   ALTER TABLE ONLY public.product DROP CONSTRAINT categoryid;
       public          postgres    false    203    197    2722            �
           2606    16844    cart customerid    FK CONSTRAINT     |   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT customerid FOREIGN KEY (customerid) REFERENCES public.customer(customerid);
 9   ALTER TABLE ONLY public.cart DROP CONSTRAINT customerid;
       public          postgres    false    2718    199    205            �
           2606    16857    orders productid    FK CONSTRAINT     z   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT productid FOREIGN KEY (productid) REFERENCES public.product(productid);
 :   ALTER TABLE ONLY public.orders DROP CONSTRAINT productid;
       public          postgres    false    197    2716    207            4   z  x�՜]k�8���+|��b��âW�~����NRz;i�m�Ʉ�.���יii����܄4��É�G:������?���˫������ݧ�ַ��n��^���=�>�w�����]�������j��?��o�������~�G�}7���3����e�������zaN+�/�	������j�ק������k}u9�����_ꗯN��wLLK�)�tS�����4��^�hT  �* � M
@[-����s���^����jq��A��|q��A��|P�
Cy̧.�T����Շ��To�S�慨��$C�0��
�
T�*L�Xl��U�\�}G��(H�<��"!MZHm��Ԩ!���Iן)H!���eu(�®�pU��E�F��f���}���m޻��+�'��g��*�[H��(��6��4�I��"y�F_w�,5}U^r�
|�׀\5������5�%�U�^8�@a�X^���XnX�����~IM���U��.��x*N{�l���b�cIB�੶<�s<VȦl[nU���j5t*<Պ�	 ��m�gV�%55ۖ7T$��U[�P��F5�U[�P��BT�ܪ昪|���J&?������a���_�a��a��`զB��l�V)�c�D��U�
�_VK��J����k�a����c��R��N� @,MS�h��,X�L��i*@�&MY[$��imYqD����	�WC@�cq8 yU�+hEh%���B+i��)� 1� DAb�y	)de4t��Ѱ�B$����V���"��L�k�4�Fh�dZ�L�T�Ub2����L&�bEV%V���U�U��BT%xPG
��J�E�P�ՠ(�jb��	)e5����J��WU����DIY�U ���Z��)ד��JD�v�RJ4���Fҟ�y?�M:�cA8H)w�i��0J�'!�DR::���d��Ǆo�EI���0�$w���2H�d�,�P����zʝ��**\�;A�EՐ�R�ŉiF7i8�e��b��j�F�)Ԕ;9�US)��T���A��T�2H����NQC�� ���b�"������$i���P�{	�U���VIC�� �r�Ĝ5 UGU��߉���@�QՁҩ��� �q:Z)N\P�@�T�H2��"�ʕ�\J����U��j�G%I(p/����
��Qӡ&�N>V�%ɟwR��˳�@@��k0B��ެ�œ��|�7MUP5?1�'�)
�̐�8�mxF=�p��{��P\F��%*n�Ƞ�t���P��=�$�#5����RU8j�wT8J�_Ə�R�ʗ���;W���F��,�@�ܪ.��Ԡ�F�,`�~��W)��3���_�Pֳz��WK�BY:z�x91����+^�{��/-����?9�UN #      0      x��]MmGq��+����L���*�,G
�=�^ %J����>7�3sYQ�'dًz�oOMw��|���~���������/��?�矿����?}�՟����w�ߟ���~�����������_��_���o��W�/��W_~)M�o����/=^n�&��0�_��_~��?3:`�3^-a�
1�΀ф�~�X�?ג�,0���4�.��0���R�(�� ��0�%v��ʀ���f�ԯ��\� 3�irz��O�C����㛶e�z\���?O8��6_�~��eu��0v������Ӎ��T�;�$
\�Z}-ʩYp }8������r�����f�j\6��;�u�Ԥ4<�����ݢ1�xl0����y�C&���?�hy	���a�5��.0^�\`���5��i��E�چ�<-vO+�<7]�2�k��=-a4Y��&����&|��/ӗ���;��8aF?`|���|�ؿf���ѹ"���gh6����گ���`�8�c?�	�>���P`p 8aT�$U�����Y aw��`q�f��f�7�4����k*@�i�`2�&��<�Y2L�<5���̿+`Nw� ,$��<�Y`Z�@�i�tg�H �Sc0�Y����ͤ����e�9�q���0f���`��\�ٔ� -�9�goZ^ ��	��A�HM�oc;`l!ސ�3�f�������v)2(��$�0կ�tQ�D4.�-zn�IG�P`�5����δs0�ۊh\v(�<���š. ���{�$���8`���]=�7�mL��O0�܌�0�-��O0.	�3�����-s�b��8��F��j@`04'��h	�AZ���C��0�EP0yߴ���`�5n'�8~��W8C�00��O0���@1a`^�'L^��B$@�i@ivR�;�T�+:a:�@���<��Lo}2t�
��Ù�Z��)6(�@��p��,	��28����D�\�_�&E���i��T���6�k�i ع�AZ��Z#��f�|����WK��pJ���w]���(ԦRR(肾�7�f,8{S�?#p�9@_=��.w_J�p����3ސՃ!?TN�UN�X~е��P�$���7LƂ��"$�'	t� �(�!rV�他�0��g��	���R}�R3���y��	�I?��4�#�tH��K��Z�mN�o�%[�dB��9�\Q`@q��jUU{d���	���St����H N�$�~啶�@�ƀ9I ��ye�J��@�,`�զ���`�8Y aJ��ؚq$�$�8Y al]��0�'Gm���@�xC$0W������$�.׌0�?w��8I a2|J����'	dj��+�O�QO�r�H�6C)��)��Sn�kh�d�)��S �p��1
ގr���&��I�!G9��r
`F�ރ��"��L���n��;>?p�D
�%m��4�>?p@�s�΁�5��N��I0���u�@wе�s	��W�n�\Ơ\6�Q���%u�������GT��0���em���U���d,�AZ0���'���$Lcd�� ��N�j�%��
Gg����A28�h+]�Qr	,9`2�͏C(_xT�0Վ��;%@!җ�0t4�tʱ���B��0yy�5����V|��zssF
!����+��d\��}�F����ؠz�k}��q��2#d��Ɍ�N�2�Z[�zg���N��M(��>�����4���h'XC�C��(a�h' ��{@g�`N���C	��G;Y�N�e�%N�	�����+uR�f�d��I���]�}��2�V��J�])��O��V#	z	�>T�}��2��{ �1���'dnS�}�w��z}����� �1z}��PR�k�
���I	�~�gf2:�J��~R����6(=�%�G�)������ %�`}� G�nzIkj�A���s@�x\Iv�`�s��B��3�� � ؇�਩e���l���}���BVKwF������e�1U�QU-�>d'��1�?OFW��!;	L9�s�'��!;	8ʝ�(���zeP���(��\rr@�4xez����A�99 yt��l�R�^zr ����A���u�ݹ�����CO
�U��(rt�Г������(j:��'�a@zR�t\IAag���' ��}Qz}����yפ�&���s@��]�tR��J��9`V��\�͜�z}��Fc����v�h@.`1�B�ׇ�$P0nW^h�r}�N��eӴ%��\�� b�阃b�&����
���܊"<A��9`V��;s.h��a'Xu=Y�q�Hj}�����f�8:㷁\vr�����<� ׇ�`�򎎴�F�\~r��gCm��i���O����h�1�Sr}�I�Pr��b4���$�^�pi2���dT���F)C�?Y�k��4Jk���0n���c����|�l2�PF=�t��VU�ҡ�OƭVU����0`��Y`!��|��a�O%�Gl,�gS���ۘ���0 ��eR���;`���:�1:�K���Ek�c�1���#�D�鱥#Zz�����A�!<�Z�.>�_z/�KM�c?M��9��0��G� `����<-�Z�����[��Zct�^�nA��S#�̓r6!�ǣY�FC3J^ʨ@(~{���R%��D�K���@�i�hQ(����7U
��F>����9y�R(��`i�\�d�m��>��0f�٭=����"�+_+�Y�"ﴇ����hi*��U
��{w���F���(2B{���0���3$�|R5��f)vv��]�����+�.��oc�Pd��(�lf���E�a����ZJ�-�8����.�j��SV ��}柰���>:��8=��2�0���$7s���P�J�x�3���$U�h�4�G:nA�i�Q�4Di��t Fj�����1s�(����[0lʛʐ���H#�2�r:������B��b6������a�`yͥ�/aZmʴ���-�%^#��A����X��`4_��h��m�� z���
���� ��,\~墸3'[�/#�?3Wd䝵Z�����=�k=AZ�g�������ќrjP����'�uE'ި���顎*�����ae�g����z�ق�ǲ6e�ڧ�JG�<7ctʒ,Թ���6=	 �y�P։���m���4AIE���B��}ަ`\Q!TJ��ڐ���	L�;ewjC�NO�h_��8g�����i~+���CjC��9��4��k��7_����>�V0��Dϛ�q<Q�~�d�����)��ڐ���x-�)��H���-�_���d�(�"[��J�ޫ35�tʂIm��;ez��`�Ϣ�68�}?�R�b-���am��ǳ`T�"���ǆ����Y0�Df�Oُ�T��p0(���<�JY��׊�P5�}#���Wꆑ�k2&�k�����*Z˯et����X������X[Q���b){ut�k�)����r:��C�̢=)e/yn����V�f�H<�^�\-u��{�2�5�\-u�x5�EWF�x-�v=Y@k[����6��%~� �w�Z�cM��{, ���3#
H@O@�غF���2��N^��pGOʜ� ~�I�z�3��X��-�<7Kٻ��{�i¡4�K|'��>#����Jyr�ӛr��s���{��$��u\=�����Zʠ>x�֢s#��i;	�w��z_�~�Kb բY�	0��<WKYi)�����Բ���0 ��	$~�P���e.�8`Lq��g:c�O�Kb#�ꂯ��H"������?!({I��C��.��g�KF;P2N���0Jds��`�'�4J�m�K��0�ZR2F��6����J~�c�j�>�����
{ߌ"@��d���3O?�}e.;�wl^iF��C\O!EazuX1'`�Zʱ���S��o��Z�`�D� �  �f>�h�<�]7�B�u_fY��%�rW�`�^�p�5��<^7L`B#/5��	{�s�T�`�X��S)������)�i���(�׀����k�f�V�N�*k��yG�#v�f2���T��y>or��U��rXK�<aJF��2�����-
��4���^���5�/)٠D�0��~�x�
�Fy�OP��%Lm̼:�	0``.Yz�`G�]�s1:��^�,����������,?a�5�0�%k'<�;��(De/Y;	���8	����d�$�,����`��Z'L͐	v}**e/m;	��qu�N	k`/m;`$�m'�%�̥m'����3xr�S�0���F=��2���xD�>D�~:�O�0����m���Zi=����!�,yG��zp�]��Y�x2�lMe���<K�7�@v�)ks�^�,y����acN���<K�7L-�Iόfe/}��u���i>(�ɰ�>+�7L���wba/}V�o�Q��1갗>+�7����-�k0〹G!2���^��~���Q��8. �'`���'��ʰ���Xi���sf��^*'`�p�%�抲�����0#�1ۢL\�^*;&<�ל������s@�߄����Q�R�9 �B}�N�gKe��@t��n�0b�2��N�v��g�����Tv
h�����Ny��R�) ����M��o�NQ�Y�j�)'̥�3�x���0�F�2��� �U[r�t �i�K}���)���ɐ��^�?W�_C��m_�R��y��n�3�����hR�Ʊ�G��N(�t�~�x��4�NF���!'Jmϗ��h�z�`�]͚R�Zt�il�������S����������r�mD�N��1��� �q��M������+c�9��Y����T�i�AhI�g�n�]�,�襔1R���r7�40j}~ʫ@��4�� DÎ��e�'S�>L~?܇��9(�������j	��R����g��XP�Q�=�����ck��x[�O��`js���Q���$������ʪ3V��������S@�ˣ�X ���:a���>�a�!_�lώ��|�t�p���j��� ���C�����S���w(c�����3N�##F0Z��7�qj�P��)v�ǧp�t��L�#E�u�3N����PFs����q�u4���2(��:NOPV����3N/ұ�a�J�>�@[�����r��8U���,����(�,*y�R��ﱁ��xo����g6����e��xKem�a�t:�P���L��M�&����1�����S��zP!���J�E����X9M:����Bm�4�b3h���@2:z,�NP*��A���h��;�Iǣ��oa�{�M:]w?à����9�zP!]wo�U����T�G�`ꍈ��]��N�����:N�L�`��֋
����D;�̵�zQ!������k�4c�d�;��s�cL�;{~��TN��      .   l   x���v
Q���W((M��L�KN,IM�/�T��L�Q���sS5�}B]�4u�]K3rS�J�5��<�3�hNp~ZIybQ*���M-J�H�K�,��� ^�Ez      *      x�͝OoG���{3H��ӭ\�"9�)@��^���(�>�� Ɂ����b-�N���^իzէ�ϟ��buz���Շ�WW�O.�o�n�7�գO]�q�z}���ۮ�7'�����6��˫�Շ�7������f�x���g/�=_=j'��_��?>�o�w�����N�1M����������w�O=yv�����x�7�y7����� n������8�����������vO�~������?ۘmt���O������b�F��7��&��1�����v�5�ɿ�,��D�"ʴ�rq���x���;�9p:�
]`��yt�<�t>���{��I�[N�q�	?.9��%'~;6~;6<*Ά�Ti���Y�4<�I��4�A�tf�tf(C`x�J�E�,Z&S�cϢe�/�^���T��x=�z��B�W���yj6yj6yj6yj6(~"��+�������I��I��I�jx�V��<�X|c�=���]�w�߽W�oG緣��k9;�FY��������Z�ݽW���Q����}%n�,n�����J_�J�S�T"��;�ԏ��믷no�{�����������R?��U�0ėH<K��T����OJ"����F�o)�i������|������Ռ�K��S�3�g�;θw�	?�˴���p��Ѵ���C�W��/ۆk3���r/��a>x6)�w�|B|B|B|B||||IP�M��1����0��潓�X$/�H^b�����{ړ��N��;��<�n��'�&�L��m�M���M~(n��ߎɯB
��p&?�8y:.���W㓯�'_�O��J��J��J��J��J~�o�~�����r�z�z�z�z�~a�~��]�`��;�����������?^�����3�ڂ+S����&.�7u�>��j��|W�[hw�ߠl���%�&�o7��&������:�����xܖ�he�������M\|o��^��R��y���/�{�|�t{q��v�U#�O��*qH(�ؿ�c���Y2fqȘ�!c��Y<���S����?��O@�cs���Ł`�.]�8,�����_�i]��w�D��KG�J�R�.��um��8/m|�XbC��xF6�I<q��t̆pǆ����Rt�|i����Oڹ�O���6��蓶��������J����O�t�7���84qh��M�.�M�6]�M�%�&��u������Ä��r��h���s����o��h���ॳ�˅��=|WX��%�O��+!\�Eh�n�S��j�o��w�����>���l?d3������������e��*�&.�uqa��k]\X�M��q,vq�lt�-�A��>..Í�'�.�vq�m�SS�Y��zY���,�!�H�I�cM~k����>��t���9��C�p(�/d��������v�k>����k)>�C>�̬�`χvb�|�$'�p_Y<�Y<EX<V����ܪ�W�VGGa�m%      ,   j   x���v
Q���W((M��L��KΩ�K,���S��L�Q@��sS5�}B]�4u�}K�3��5��<�7�h�[fN.���q,*���)�y� ��� �[v      2   M	  x�����^��{=�_ڀ��g#U
���B@;�T��sH.&/�5:�����֬��Ï?���_~��O�߾���?���/����߯�>z���˯��}�����/�￾��ϯ������_��ǿ�������߿,��k|��w�:�}o�P�����_
4�x���{O�����I�����o�;]�N��ە���J�C�WJ����@])#���7�>&P��ޯ���B'5���>��@���l����r���鴹�����}�M�����A�N$h�(��i&�'F��'F���9IPӇBA]�E�^�BA�P�Jʡ,P���h�z��2DW;%�U�
ƨj�@���i$yR���b�fZ��GA�?}{Q����/���i��&P�KՎ�t(���n6��繧0蹧,hM����)A34WQ�
����eE���"&XE{�@�����4Led��v,j_)�:Y����t��s�:ɩ��-W��Tt������,yL�~�^�TG��~��w��(�8ł��
��p�QA~I�^~���A��.�fQ��6y��JNq(�����NV!��b{ِ)YT'3��Eu2F�bT'=�_��q<��ˠ�W*�
	�J{��4��T3����hd4�&P2FM��,h�(�uh��`?j�I�7�r}A����q��$�>'�	�sV]"��V��;��t�)*��I
��NJRH=tR�B2=>��)�㳠�RdC�,J~}��bAŞ'ȡ��1�{'�A���H�R%��L/�*t���OՎR�S�<�E�\_�,�!�i�!�#	1�K��&��|�*������Mu$�l�ZG�L��V���Lof��!�~�b h�I%-#��52F��2$3�W�J����y@���e4h����Rs�����L:�m��푢�ɒg(��#�;!9���C��bz��l���$9�q�<`.�5_��@T�ۃ$f��=�ş�ߟӊd��ϹRU *�y���<:)i����$��'�ܷ�:i�SET�8����\9?*��l�L^ڐ)����(�����_���䕪Kɓ1�Nۘ�S��&��N6(Gɋ�0��k�d�b\_��'���"fȸ_]JYT��L�* 6+I�J���q4ZW�';:)h���� GC��5&��ʢHUg�Ƀ�l�(�g#OZC�c��T'ّx�N��Q�`�'�鞂�4���(��c�L�q�13�ɃЄ� ��Cl� ��Td�'=� g$\��A�.q� 	D��e8h�>�Xp��\��� e��t�:W�$�MI ���+�!�^Wm:PM���I�j�蕒E��{�҇=��,���ҞAj���9?�����'E��c�Z9��D���B49o�5�;D'׏
�7(���[G��T�I/������)N�AS��'���)�MqT��@!4�A��W���8�,�OC-�A��B-�A�����HV�9HV�7Hb&��h�����I�RIR�v�	ҟJ�k��(iz���ϴ	����8i#i�p)�ȑ���d����5N*�ړb�Q{r�'����9�'.�"gyB#wFv�On���D�	#��q-�]�)eɮyġ;`�80Y�kQ��ǵ(����Aھ��� m��������YH���lP�A:�-�A:͝� ���� �Tk�6(���E�=>	�6(��S��Pԋ6rQmhт�[�B��F�ۆ&���6��\F��bjD�ȍ��2�8���2?M5��R��('�T�Q!��"�d%ӎ�����4%h�ldj�����|tOI'=5�N.Z��J�����OՋ���pK�5u�TT��-�=�z|Tq�r���]h������.��F�Jm���)
��IѾA�m@wK5�������{�&S�Q*�NQДI���R#]�^{;pPyi2���)���y�p��#/�s�X�Ta��C�Xq*%���ޥ;�N�8���YP�Y��G���lbj:�� �jw�=���<C�s�.����Nz7������"��F�Xл
�����,�8��A�%K{�ͤ�R8�7�0�r��l����Z�$ӭA��N{�PE�mTnI�e�VVŽ��D�g�J��f�$5�)n#�b�v�lPl!P����F����!!#gNS��H������H�|�gt�t��!!#������Rba#��)Y������V��r�)��f7*�Z�nT��E��5R)_C9yOk��4���ҡ�,�UC�)iQ%	.ڕL�?���\�����)�"c�R�M
�⻰Ū��)k.����5���NʚS�k	��ּ+`��٥E!O���$�`���$s�U��T�\U��%W��9��PK=4�.�8������ߗj�      (   �   x��α�0����7 i��NNhH ���GZji�������]r�W�M~o���(��픞�e�5 '�FIE��g�Q���ޖJ�f��Ⱦtp�Q��^�����.o :+;#��ί�@ݕ%�tO 9����_ĉ_�@9l��:r��f�G��(~����T�     