PGDMP                         y            appirest    13beta3    13beta3 z    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16483    appirest    DATABASE     g   CREATE DATABASE appirest WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE appirest;
                postgres    false            �            1259    33662    administrador    TABLE     �   CREATE TABLE public.administrador (
    adm_cedula integer NOT NULL,
    adm_nombre character varying(50) NOT NULL,
    adm_email character varying(50) NOT NULL,
    adm_salario double precision NOT NULL
);
 !   DROP TABLE public.administrador;
       public         heap    postgres    false            �            1259    33703    cultivo    TABLE     ;  CREATE TABLE public.cultivo (
    cul_id integer NOT NULL,
    cul_nombre character varying(60) NOT NULL,
    cul_inicio date DEFAULT CURRENT_TIMESTAMP,
    cul_fin date,
    cul_cantidad integer NOT NULL,
    cul_gasto double precision NOT NULL,
    cul_lot_id integer NOT NULL,
    cul_tip_id integer NOT NULL
);
    DROP TABLE public.cultivo;
       public         heap    postgres    false            �            1259    33701    cultivo_cul_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cultivo_cul_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cultivo_cul_id_seq;
       public          postgres    false    208            �           0    0    cultivo_cul_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cultivo_cul_id_seq OWNED BY public.cultivo.cul_id;
          public          postgres    false    207            �            1259    33839    factura    TABLE       CREATE TABLE public.factura (
    fac_id integer NOT NULL,
    fac_fecha date DEFAULT CURRENT_TIMESTAMP,
    fac_tipopago character varying(30),
    fac_valor integer NOT NULL,
    fac_cantidad integer NOT NULL,
    fac_ins_id integer NOT NULL,
    fac_pro_nit integer NOT NULL
);
    DROP TABLE public.factura;
       public         heap    postgres    false            �            1259    33837    factura_fac_id_seq    SEQUENCE     �   CREATE SEQUENCE public.factura_fac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.factura_fac_id_seq;
       public          postgres    false    227            �           0    0    factura_fac_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.factura_fac_id_seq OWNED BY public.factura.fac_id;
          public          postgres    false    226            �            1259    33821    fertilizante    TABLE     Y   CREATE TABLE public.fertilizante (
    pro_id integer NOT NULL,
    con_nutri integer
);
     DROP TABLE public.fertilizante;
       public         heap    postgres    false            �            1259    33819    fertilizante_pro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fertilizante_pro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.fertilizante_pro_id_seq;
       public          postgres    false    224            �           0    0    fertilizante_pro_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.fertilizante_pro_id_seq OWNED BY public.fertilizante.pro_id;
          public          postgres    false    223            �            1259    33669    finca    TABLE     �   CREATE TABLE public.finca (
    fin_id integer NOT NULL,
    fin_nombre character varying(60) NOT NULL,
    fin_area double precision NOT NULL,
    fin_descripcion character varying(255),
    fin_adm_cedula integer NOT NULL
);
    DROP TABLE public.finca;
       public         heap    postgres    false            �            1259    33667    finca_fin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.finca_fin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.finca_fin_id_seq;
       public          postgres    false    202            �           0    0    finca_fin_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.finca_fin_id_seq OWNED BY public.finca.fin_id;
          public          postgres    false    201            �            1259    33808 	   fungicida    TABLE     W   CREATE TABLE public.fungicida (
    pro_id integer NOT NULL,
    niv_toxico integer
);
    DROP TABLE public.fungicida;
       public         heap    postgres    false            �            1259    33806    fungicida_pro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fungicida_pro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.fungicida_pro_id_seq;
       public          postgres    false    222            �           0    0    fungicida_pro_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.fungicida_pro_id_seq OWNED BY public.fungicida.pro_id;
          public          postgres    false    221            �            1259    33766    insumo    TABLE     T   CREATE TABLE public.insumo (
    ins_id integer NOT NULL,
    ins_fechvenci date
);
    DROP TABLE public.insumo;
       public         heap    postgres    false            �            1259    33764    insumo_ins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.insumo_ins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.insumo_ins_id_seq;
       public          postgres    false    215            �           0    0    insumo_ins_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.insumo_ins_id_seq OWNED BY public.insumo.ins_id;
          public          postgres    false    214            �            1259    33776    insxope    TABLE     Z   CREATE TABLE public.insxope (
    ins_id integer NOT NULL,
    ope_id integer NOT NULL
);
    DROP TABLE public.insxope;
       public         heap    postgres    false            �            1259    33772    insxope_ins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.insxope_ins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.insxope_ins_id_seq;
       public          postgres    false    218            �           0    0    insxope_ins_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.insxope_ins_id_seq OWNED BY public.insxope.ins_id;
          public          postgres    false    216            �            1259    33774    insxope_ope_id_seq    SEQUENCE     �   CREATE SEQUENCE public.insxope_ope_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.insxope_ope_id_seq;
       public          postgres    false    218            �           0    0    insxope_ope_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.insxope_ope_id_seq OWNED BY public.insxope.ope_id;
          public          postgres    false    217            �            1259    33682    lote    TABLE     �   CREATE TABLE public.lote (
    lot_id integer NOT NULL,
    lot_area double precision NOT NULL,
    lot_descripcion character varying(255),
    lot_fin_id integer NOT NULL
);
    DROP TABLE public.lote;
       public         heap    postgres    false            �            1259    33680    lote_lot_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lote_lot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.lote_lot_id_seq;
       public          postgres    false    204            �           0    0    lote_lot_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.lote_lot_id_seq OWNED BY public.lote.lot_id;
          public          postgres    false    203            �            1259    33723 	   operacion    TABLE     �   CREATE TABLE public.operacion (
    ope_id integer NOT NULL,
    ope_nombre character varying(60) NOT NULL,
    ope_tiempo character varying(20),
    ope_fecha date DEFAULT CURRENT_TIMESTAMP,
    ope_fin date,
    ope_cul_id integer NOT NULL
);
    DROP TABLE public.operacion;
       public         heap    postgres    false            �            1259    33721    operacion_ope_id_seq    SEQUENCE     �   CREATE SEQUENCE public.operacion_ope_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.operacion_ope_id_seq;
       public          postgres    false    210            �           0    0    operacion_ope_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.operacion_ope_id_seq OWNED BY public.operacion.ope_id;
          public          postgres    false    209            �            1259    33795    producto    TABLE     �   CREATE TABLE public.producto (
    pro_id integer NOT NULL,
    pro_nombre character varying(60) NOT NULL,
    pro_presentacion character varying(60),
    pro_ins_id integer NOT NULL
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    33793    producto_pro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_pro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.producto_pro_id_seq;
       public          postgres    false    220            �           0    0    producto_pro_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.producto_pro_id_seq OWNED BY public.producto.pro_id;
          public          postgres    false    219            �            1259    33832 	   proveedor    TABLE     �   CREATE TABLE public.proveedor (
    pro_nit integer NOT NULL,
    pro_razonsocial character varying(60),
    pro_email character varying(60)
);
    DROP TABLE public.proveedor;
       public         heap    postgres    false            �            1259    33695    tipocultivo    TABLE     p   CREATE TABLE public.tipocultivo (
    tip_id integer NOT NULL,
    tip_nombre character varying(60) NOT NULL
);
    DROP TABLE public.tipocultivo;
       public         heap    postgres    false            �            1259    33693    tipocultivo_tip_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipocultivo_tip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tipocultivo_tip_id_seq;
       public          postgres    false    206            �           0    0    tipocultivo_tip_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tipocultivo_tip_id_seq OWNED BY public.tipocultivo.tip_id;
          public          postgres    false    205            �            1259    33917 
   trabajador    TABLE     �   CREATE TABLE public.trabajador (
    tra_cedula integer NOT NULL,
    tra_nombre character varying(60),
    tra_telefono bigint NOT NULL,
    tra_foto character varying(255)
);
    DROP TABLE public.trabajador;
       public         heap    postgres    false            �            1259    33915    trabajador_tra_cedula_seq    SEQUENCE     �   CREATE SEQUENCE public.trabajador_tra_cedula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.trabajador_tra_cedula_seq;
       public          postgres    false    229            �           0    0    trabajador_tra_cedula_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.trabajador_tra_cedula_seq OWNED BY public.trabajador.tra_cedula;
          public          postgres    false    228            �            1259    33747    traxope    TABLE     ^   CREATE TABLE public.traxope (
    tra_cedula integer NOT NULL,
    ope_id integer NOT NULL
);
    DROP TABLE public.traxope;
       public         heap    postgres    false            �            1259    33745    traxope_ope_id_seq    SEQUENCE     �   CREATE SEQUENCE public.traxope_ope_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.traxope_ope_id_seq;
       public          postgres    false    213            �           0    0    traxope_ope_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.traxope_ope_id_seq OWNED BY public.traxope.ope_id;
          public          postgres    false    212            �            1259    33743    traxope_tra_cedula_seq    SEQUENCE     �   CREATE SEQUENCE public.traxope_tra_cedula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.traxope_tra_cedula_seq;
       public          postgres    false    213            �           0    0    traxope_tra_cedula_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.traxope_tra_cedula_seq OWNED BY public.traxope.tra_cedula;
          public          postgres    false    211            �
           2604    33706    cultivo cul_id    DEFAULT     p   ALTER TABLE ONLY public.cultivo ALTER COLUMN cul_id SET DEFAULT nextval('public.cultivo_cul_id_seq'::regclass);
 =   ALTER TABLE public.cultivo ALTER COLUMN cul_id DROP DEFAULT;
       public          postgres    false    207    208    208            �
           2604    33842    factura fac_id    DEFAULT     p   ALTER TABLE ONLY public.factura ALTER COLUMN fac_id SET DEFAULT nextval('public.factura_fac_id_seq'::regclass);
 =   ALTER TABLE public.factura ALTER COLUMN fac_id DROP DEFAULT;
       public          postgres    false    226    227    227            �
           2604    33824    fertilizante pro_id    DEFAULT     z   ALTER TABLE ONLY public.fertilizante ALTER COLUMN pro_id SET DEFAULT nextval('public.fertilizante_pro_id_seq'::regclass);
 B   ALTER TABLE public.fertilizante ALTER COLUMN pro_id DROP DEFAULT;
       public          postgres    false    224    223    224            �
           2604    33672    finca fin_id    DEFAULT     l   ALTER TABLE ONLY public.finca ALTER COLUMN fin_id SET DEFAULT nextval('public.finca_fin_id_seq'::regclass);
 ;   ALTER TABLE public.finca ALTER COLUMN fin_id DROP DEFAULT;
       public          postgres    false    201    202    202            �
           2604    33811    fungicida pro_id    DEFAULT     t   ALTER TABLE ONLY public.fungicida ALTER COLUMN pro_id SET DEFAULT nextval('public.fungicida_pro_id_seq'::regclass);
 ?   ALTER TABLE public.fungicida ALTER COLUMN pro_id DROP DEFAULT;
       public          postgres    false    222    221    222            �
           2604    33769    insumo ins_id    DEFAULT     n   ALTER TABLE ONLY public.insumo ALTER COLUMN ins_id SET DEFAULT nextval('public.insumo_ins_id_seq'::regclass);
 <   ALTER TABLE public.insumo ALTER COLUMN ins_id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    33779    insxope ins_id    DEFAULT     p   ALTER TABLE ONLY public.insxope ALTER COLUMN ins_id SET DEFAULT nextval('public.insxope_ins_id_seq'::regclass);
 =   ALTER TABLE public.insxope ALTER COLUMN ins_id DROP DEFAULT;
       public          postgres    false    216    218    218            �
           2604    33780    insxope ope_id    DEFAULT     p   ALTER TABLE ONLY public.insxope ALTER COLUMN ope_id SET DEFAULT nextval('public.insxope_ope_id_seq'::regclass);
 =   ALTER TABLE public.insxope ALTER COLUMN ope_id DROP DEFAULT;
       public          postgres    false    217    218    218            �
           2604    33685    lote lot_id    DEFAULT     j   ALTER TABLE ONLY public.lote ALTER COLUMN lot_id SET DEFAULT nextval('public.lote_lot_id_seq'::regclass);
 :   ALTER TABLE public.lote ALTER COLUMN lot_id DROP DEFAULT;
       public          postgres    false    204    203    204            �
           2604    33726    operacion ope_id    DEFAULT     t   ALTER TABLE ONLY public.operacion ALTER COLUMN ope_id SET DEFAULT nextval('public.operacion_ope_id_seq'::regclass);
 ?   ALTER TABLE public.operacion ALTER COLUMN ope_id DROP DEFAULT;
       public          postgres    false    210    209    210            �
           2604    33798    producto pro_id    DEFAULT     r   ALTER TABLE ONLY public.producto ALTER COLUMN pro_id SET DEFAULT nextval('public.producto_pro_id_seq'::regclass);
 >   ALTER TABLE public.producto ALTER COLUMN pro_id DROP DEFAULT;
       public          postgres    false    220    219    220            �
           2604    33698    tipocultivo tip_id    DEFAULT     x   ALTER TABLE ONLY public.tipocultivo ALTER COLUMN tip_id SET DEFAULT nextval('public.tipocultivo_tip_id_seq'::regclass);
 A   ALTER TABLE public.tipocultivo ALTER COLUMN tip_id DROP DEFAULT;
       public          postgres    false    205    206    206            �
           2604    33920    trabajador tra_cedula    DEFAULT     ~   ALTER TABLE ONLY public.trabajador ALTER COLUMN tra_cedula SET DEFAULT nextval('public.trabajador_tra_cedula_seq'::regclass);
 D   ALTER TABLE public.trabajador ALTER COLUMN tra_cedula DROP DEFAULT;
       public          postgres    false    228    229    229            �
           2604    33750    traxope tra_cedula    DEFAULT     x   ALTER TABLE ONLY public.traxope ALTER COLUMN tra_cedula SET DEFAULT nextval('public.traxope_tra_cedula_seq'::regclass);
 A   ALTER TABLE public.traxope ALTER COLUMN tra_cedula DROP DEFAULT;
       public          postgres    false    213    211    213            �
           2604    33751    traxope ope_id    DEFAULT     p   ALTER TABLE ONLY public.traxope ALTER COLUMN ope_id SET DEFAULT nextval('public.traxope_ope_id_seq'::regclass);
 =   ALTER TABLE public.traxope ALTER COLUMN ope_id DROP DEFAULT;
       public          postgres    false    212    213    213            �          0    33662    administrador 
   TABLE DATA           W   COPY public.administrador (adm_cedula, adm_nombre, adm_email, adm_salario) FROM stdin;
    public          postgres    false    200   �       �          0    33703    cultivo 
   TABLE DATA           {   COPY public.cultivo (cul_id, cul_nombre, cul_inicio, cul_fin, cul_cantidad, cul_gasto, cul_lot_id, cul_tip_id) FROM stdin;
    public          postgres    false    208   ��       �          0    33839    factura 
   TABLE DATA           t   COPY public.factura (fac_id, fac_fecha, fac_tipopago, fac_valor, fac_cantidad, fac_ins_id, fac_pro_nit) FROM stdin;
    public          postgres    false    227   ڍ       �          0    33821    fertilizante 
   TABLE DATA           9   COPY public.fertilizante (pro_id, con_nutri) FROM stdin;
    public          postgres    false    224   (�       �          0    33669    finca 
   TABLE DATA           ^   COPY public.finca (fin_id, fin_nombre, fin_area, fin_descripcion, fin_adm_cedula) FROM stdin;
    public          postgres    false    202   K�       �          0    33808 	   fungicida 
   TABLE DATA           7   COPY public.fungicida (pro_id, niv_toxico) FROM stdin;
    public          postgres    false    222   ��       �          0    33766    insumo 
   TABLE DATA           7   COPY public.insumo (ins_id, ins_fechvenci) FROM stdin;
    public          postgres    false    215   �       �          0    33776    insxope 
   TABLE DATA           1   COPY public.insxope (ins_id, ope_id) FROM stdin;
    public          postgres    false    218   �       �          0    33682    lote 
   TABLE DATA           M   COPY public.lote (lot_id, lot_area, lot_descripcion, lot_fin_id) FROM stdin;
    public          postgres    false    204   8�       �          0    33723 	   operacion 
   TABLE DATA           c   COPY public.operacion (ope_id, ope_nombre, ope_tiempo, ope_fecha, ope_fin, ope_cul_id) FROM stdin;
    public          postgres    false    210   ��       �          0    33795    producto 
   TABLE DATA           T   COPY public.producto (pro_id, pro_nombre, pro_presentacion, pro_ins_id) FROM stdin;
    public          postgres    false    220   �       �          0    33832 	   proveedor 
   TABLE DATA           H   COPY public.proveedor (pro_nit, pro_razonsocial, pro_email) FROM stdin;
    public          postgres    false    225   4�       �          0    33695    tipocultivo 
   TABLE DATA           9   COPY public.tipocultivo (tip_id, tip_nombre) FROM stdin;
    public          postgres    false    206   ~�       �          0    33917 
   trabajador 
   TABLE DATA           T   COPY public.trabajador (tra_cedula, tra_nombre, tra_telefono, tra_foto) FROM stdin;
    public          postgres    false    229   Ӑ       �          0    33747    traxope 
   TABLE DATA           5   COPY public.traxope (tra_cedula, ope_id) FROM stdin;
    public          postgres    false    213   ��       �           0    0    cultivo_cul_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cultivo_cul_id_seq', 2, true);
          public          postgres    false    207            �           0    0    factura_fac_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.factura_fac_id_seq', 2, true);
          public          postgres    false    226            �           0    0    fertilizante_pro_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.fertilizante_pro_id_seq', 2, true);
          public          postgres    false    223            �           0    0    finca_fin_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.finca_fin_id_seq', 7, true);
          public          postgres    false    201            �           0    0    fungicida_pro_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.fungicida_pro_id_seq', 2, true);
          public          postgres    false    221            �           0    0    insumo_ins_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.insumo_ins_id_seq', 2, true);
          public          postgres    false    214            �           0    0    insxope_ins_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.insxope_ins_id_seq', 1, false);
          public          postgres    false    216            �           0    0    insxope_ope_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.insxope_ope_id_seq', 1, false);
          public          postgres    false    217            �           0    0    lote_lot_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.lote_lot_id_seq', 13, true);
          public          postgres    false    203            �           0    0    operacion_ope_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.operacion_ope_id_seq', 2, true);
          public          postgres    false    209            �           0    0    producto_pro_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.producto_pro_id_seq', 2, true);
          public          postgres    false    219            �           0    0    tipocultivo_tip_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tipocultivo_tip_id_seq', 4, true);
          public          postgres    false    205            �           0    0    trabajador_tra_cedula_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.trabajador_tra_cedula_seq', 4, true);
          public          postgres    false    228            �           0    0    traxope_ope_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.traxope_ope_id_seq', 1, false);
          public          postgres    false    212            �           0    0    traxope_tra_cedula_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.traxope_tra_cedula_seq', 1, false);
          public          postgres    false    211                        2606    33666     administrador administrador_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (adm_cedula);
 J   ALTER TABLE ONLY public.administrador DROP CONSTRAINT administrador_pkey;
       public            postgres    false    200                       2606    33709    cultivo cultivo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cultivo
    ADD CONSTRAINT cultivo_pkey PRIMARY KEY (cul_id);
 >   ALTER TABLE ONLY public.cultivo DROP CONSTRAINT cultivo_pkey;
       public            postgres    false    208                       2606    33845    factura factura_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (fac_id);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    227                       2606    33826    fertilizante fertilizante_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.fertilizante
    ADD CONSTRAINT fertilizante_pkey PRIMARY KEY (pro_id);
 H   ALTER TABLE ONLY public.fertilizante DROP CONSTRAINT fertilizante_pkey;
       public            postgres    false    224                       2606    33674    finca finca_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.finca
    ADD CONSTRAINT finca_pkey PRIMARY KEY (fin_id);
 :   ALTER TABLE ONLY public.finca DROP CONSTRAINT finca_pkey;
       public            postgres    false    202                       2606    33813    fungicida fungicida_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fungicida
    ADD CONSTRAINT fungicida_pkey PRIMARY KEY (pro_id);
 B   ALTER TABLE ONLY public.fungicida DROP CONSTRAINT fungicida_pkey;
       public            postgres    false    222                       2606    33771    insumo insumo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.insumo
    ADD CONSTRAINT insumo_pkey PRIMARY KEY (ins_id);
 <   ALTER TABLE ONLY public.insumo DROP CONSTRAINT insumo_pkey;
       public            postgres    false    215                       2606    33782    insxope insxope_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.insxope
    ADD CONSTRAINT insxope_pkey PRIMARY KEY (ins_id, ope_id);
 >   ALTER TABLE ONLY public.insxope DROP CONSTRAINT insxope_pkey;
       public            postgres    false    218    218                       2606    33687    lote lote_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.lote
    ADD CONSTRAINT lote_pkey PRIMARY KEY (lot_id);
 8   ALTER TABLE ONLY public.lote DROP CONSTRAINT lote_pkey;
       public            postgres    false    204            
           2606    33729    operacion operacion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.operacion
    ADD CONSTRAINT operacion_pkey PRIMARY KEY (ope_id);
 B   ALTER TABLE ONLY public.operacion DROP CONSTRAINT operacion_pkey;
       public            postgres    false    210                       2606    33800    producto producto_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (pro_id);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    220                       2606    33836    proveedor proveedor_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (pro_nit);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public            postgres    false    225                       2606    33700    tipocultivo tipocultivo_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipocultivo
    ADD CONSTRAINT tipocultivo_pkey PRIMARY KEY (tip_id);
 F   ALTER TABLE ONLY public.tipocultivo DROP CONSTRAINT tipocultivo_pkey;
       public            postgres    false    206                       2606    33922    trabajador trabajador_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.trabajador
    ADD CONSTRAINT trabajador_pkey PRIMARY KEY (tra_cedula);
 D   ALTER TABLE ONLY public.trabajador DROP CONSTRAINT trabajador_pkey;
       public            postgres    false    229                       2606    33753    traxope traxope_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.traxope
    ADD CONSTRAINT traxope_pkey PRIMARY KEY (tra_cedula, ope_id);
 >   ALTER TABLE ONLY public.traxope DROP CONSTRAINT traxope_pkey;
       public            postgres    false    213    213                       2606    33710    cultivo cultivo_cul_lot_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cultivo
    ADD CONSTRAINT cultivo_cul_lot_id_fkey FOREIGN KEY (cul_lot_id) REFERENCES public.lote(lot_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.cultivo DROP CONSTRAINT cultivo_cul_lot_id_fkey;
       public          postgres    false    204    208    2820                        2606    33715    cultivo cultivo_cul_tip_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cultivo
    ADD CONSTRAINT cultivo_cul_tip_id_fkey FOREIGN KEY (cul_tip_id) REFERENCES public.tipocultivo(tip_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.cultivo DROP CONSTRAINT cultivo_cul_tip_id_fkey;
       public          postgres    false    2822    208    206            (           2606    33846    factura factura_fac_ins_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_fac_ins_id_fkey FOREIGN KEY (fac_ins_id) REFERENCES public.insumo(ins_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_fac_ins_id_fkey;
       public          postgres    false    215    2830    227            )           2606    33851     factura factura_fac_pro_nit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_fac_pro_nit_fkey FOREIGN KEY (fac_pro_nit) REFERENCES public.proveedor(pro_nit) ON UPDATE CASCADE ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_fac_pro_nit_fkey;
       public          postgres    false    2840    227    225            '           2606    33827 %   fertilizante fertilizante_pro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fertilizante
    ADD CONSTRAINT fertilizante_pro_id_fkey FOREIGN KEY (pro_id) REFERENCES public.producto(pro_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.fertilizante DROP CONSTRAINT fertilizante_pro_id_fkey;
       public          postgres    false    224    2834    220                       2606    33675    finca finca_fin_adm_cedula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.finca
    ADD CONSTRAINT finca_fin_adm_cedula_fkey FOREIGN KEY (fin_adm_cedula) REFERENCES public.administrador(adm_cedula) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.finca DROP CONSTRAINT finca_fin_adm_cedula_fkey;
       public          postgres    false    2816    202    200            &           2606    33814    fungicida fungicida_pro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fungicida
    ADD CONSTRAINT fungicida_pro_id_fkey FOREIGN KEY (pro_id) REFERENCES public.producto(pro_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.fungicida DROP CONSTRAINT fungicida_pro_id_fkey;
       public          postgres    false    2834    220    222            #           2606    33783    insxope insxope_ins_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insxope
    ADD CONSTRAINT insxope_ins_id_fkey FOREIGN KEY (ins_id) REFERENCES public.insumo(ins_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.insxope DROP CONSTRAINT insxope_ins_id_fkey;
       public          postgres    false    215    2830    218            $           2606    33788    insxope insxope_ope_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insxope
    ADD CONSTRAINT insxope_ope_id_fkey FOREIGN KEY (ope_id) REFERENCES public.operacion(ope_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.insxope DROP CONSTRAINT insxope_ope_id_fkey;
       public          postgres    false    210    218    2826                       2606    33688    lote lote_lot_fin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lote
    ADD CONSTRAINT lote_lot_fin_id_fkey FOREIGN KEY (lot_fin_id) REFERENCES public.finca(fin_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 C   ALTER TABLE ONLY public.lote DROP CONSTRAINT lote_lot_fin_id_fkey;
       public          postgres    false    2818    202    204            !           2606    33730 #   operacion operacion_ope_cul_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.operacion
    ADD CONSTRAINT operacion_ope_cul_id_fkey FOREIGN KEY (ope_cul_id) REFERENCES public.cultivo(cul_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.operacion DROP CONSTRAINT operacion_ope_cul_id_fkey;
       public          postgres    false    208    210    2824            %           2606    33801 !   producto producto_pro_ins_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pro_ins_id_fkey FOREIGN KEY (pro_ins_id) REFERENCES public.insumo(ins_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pro_ins_id_fkey;
       public          postgres    false    2830    220    215            "           2606    33759    traxope traxope_ope_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.traxope
    ADD CONSTRAINT traxope_ope_id_fkey FOREIGN KEY (ope_id) REFERENCES public.operacion(ope_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.traxope DROP CONSTRAINT traxope_ope_id_fkey;
       public          postgres    false    213    2826    210            �   h   x�3426���/N�y��9鹉�9z�����`�ehlb��Xtxm"��ON,JI�K,FQmb`Rmbj�霘�����R����UU��qqq � *z      �   J   x�3�,MN�4202�50�541�tL@LCN3NC.#N�Լ�̤�T4���F&P�)D�9PC� �}�      �   >   x�3�4202�50�52�I,�J-I�445 NC�4426�2��36��3BRT R���� ���      �      x�3�4�2�=... >�      �   f   x�3��I�J�;�6�X����T��ӵX�4/Q!-3/9Q!��R�(�$�(1%Q!%5G��45)'����Ĕː38?����T�����܂��DNC#c�=... �� �      �      x�3�4�2�=... >�      �      x�3�4202�50�52�2�s��b���� S�      �      x�3�4�2�4����� ��      �   \   x�]ͱ�0D��7E&�l'��#�P Q �a�".ߗN���,^���^EIa��QS��FO-��Ԝ�Y�?��E[c+B�x��m���|],&+      �   >   x�3�(*MMJT0�46P���+-�/�4202�50�52�2�ALC.#�j#NS���b���� �@      �   2   x�3��O)M.�W0�,(J-N�+IL���r����F��F�F\1z\\\ ���      �   :   x�3226��-�Tp�L�����I�-�K�w��/�M���K���2���åR��b���� �T�      �   E   x�3�J<�69�X�R��4��ʢ�Ҝ�b.#N����Ĝ̪�b.cN�Ԣ�Ĝ�b.N���03F��� ��      �   �   x����
�0  ��|
O��i�4�0�L�"��XSJm�g�Ч����]>=f���W��TGs��_hZ�H74"�qgP}p�EATRS�����e��d�F��%qv<����-��n��TX�C�x�v���D��}ݨ���PrcE0*�����p�U����㹉d ��U�+05�YH��cvU%I�@eg3      �      x�3�4�2�4����� ��     