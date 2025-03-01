PGDMP                         |         
   ShopSport2    15.3    15.3 K    k           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            l           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            m           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            n           1262    36657 
   ShopSport2    DATABASE     �   CREATE DATABASE "ShopSport2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "ShopSport2";
                postgres    false                        2615    36663    order    SCHEMA        CREATE SCHEMA "order";
    DROP SCHEMA "order";
                postgres    false                        2615    36664    product    SCHEMA        CREATE SCHEMA product;
    DROP SCHEMA product;
                postgres    false            �            1259    36705    District    TABLE     �   CREATE TABLE "order"."District" (
    "Id" uuid NOT NULL,
    "Name" text,
    "Province_id" uuid NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE "order"."District";
       order         heap    postgres    false    6            �            1259    36763    Order    TABLE     �  CREATE TABLE "order"."Order" (
    "Id" uuid NOT NULL,
    "Email" text,
    "PhoneNumber" text,
    "Address" text,
    "Note" text,
    "Price" numeric NOT NULL,
    "Status" integer NOT NULL,
    "IsPay" integer NOT NULL,
    "FirstName" text,
    "LastName" text,
    "Province_id" uuid NOT NULL,
    "District_id" uuid NOT NULL,
    "Ward_id" uuid NOT NULL,
    "User_id" uuid NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE "order"."Order";
       order         heap    postgres    false    6            �            1259    36790    OrderDetail    TABLE     $  CREATE TABLE "order"."OrderDetail" (
    "Id" uuid NOT NULL,
    "Price" numeric NOT NULL,
    "Quantity" integer NOT NULL,
    "OrderId" uuid NOT NULL,
    "ProductId" uuid NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE "order"."OrderDetail";
       order         heap    postgres    false    6            �            1259    36746    Rating    TABLE       CREATE TABLE "order"."Rating" (
    "Id" uuid NOT NULL,
    star integer NOT NULL,
    "Content" text,
    "Product_id" uuid NOT NULL,
    "User_id" uuid NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE "order"."Rating";
       order         heap    postgres    false    6            �            1259    36807    Returns    TABLE     5  CREATE TABLE "order"."Returns" (
    "Id" uuid NOT NULL,
    "Order_id" uuid NOT NULL,
    "Product_id" uuid NOT NULL,
    "Quantity" integer NOT NULL,
    "Reason" text,
    "Price" numeric NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE "order"."Returns";
       order         heap    postgres    false    6            �            1259    36734    Ward    TABLE     �   CREATE TABLE "order"."Ward" (
    "Id" uuid NOT NULL,
    "Name" text,
    "District_id" uuid NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE "order"."Ward";
       order         heap    postgres    false    6            �            1259    36717    Product    TABLE     �  CREATE TABLE product."Product" (
    "Id" uuid NOT NULL,
    "Name" text,
    "Description" text,
    "Image" text[],
    "InportPrice" numeric NOT NULL,
    "Price" numeric NOT NULL,
    "PromotionPrice" numeric NOT NULL,
    "IsStatus" integer NOT NULL,
    "Quantity" integer NOT NULL,
    "ProductCategory_id" uuid NOT NULL,
    "Supplier_id" uuid NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE product."Product";
       product         heap    postgres    false    7            �            1259    36693    ProductCategories    TABLE       CREATE TABLE public."ProductCategories" (
    "Id" uuid NOT NULL,
    "Name" text,
    "ProductCategoriesParent_id" uuid NOT NULL,
    "ProductCategoriesParentId" uuid,
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
 '   DROP TABLE public."ProductCategories";
       public         heap    postgres    false            �            1259    36665    ProductCategoriesParent    TABLE     �   CREATE TABLE public."ProductCategoriesParent" (
    "Id" uuid NOT NULL,
    "Name" text,
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
 -   DROP TABLE public."ProductCategoriesParent";
       public         heap    postgres    false            �            1259    36672 	   Provinces    TABLE     �   CREATE TABLE public."Provinces" (
    "Id" uuid NOT NULL,
    "Name" text,
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Provinces";
       public         heap    postgres    false            �            1259    36679 	   Suppliers    TABLE     �   CREATE TABLE public."Suppliers" (
    "Id" uuid NOT NULL,
    "Name" text,
    "Adress" text,
    "Phone" text,
    "Email" text,
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Suppliers";
       public         heap    postgres    false            �            1259    36686    Users    TABLE     3  CREATE TABLE public."Users" (
    "Id" uuid NOT NULL,
    "LastName" text,
    "FirstName" text,
    "Email" text,
    "Password" text,
    "PhoneNumber" text,
    "Avatar" text,
    "Roles" text[],
    "CreatedAt" timestamp with time zone NOT NULL,
    "LastUpdatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    36658    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         heap    postgres    false            b          0    36705    District 
   TABLE DATA           `   COPY "order"."District" ("Id", "Name", "Province_id", "CreatedAt", "LastUpdatedAt") FROM stdin;
    order          postgres    false    222   �d       f          0    36763    Order 
   TABLE DATA           �   COPY "order"."Order" ("Id", "Email", "PhoneNumber", "Address", "Note", "Price", "Status", "IsPay", "FirstName", "LastName", "Province_id", "District_id", "Ward_id", "User_id", "CreatedAt", "LastUpdatedAt") FROM stdin;
    order          postgres    false    226   :e       g          0    36790    OrderDetail 
   TABLE DATA           y   COPY "order"."OrderDetail" ("Id", "Price", "Quantity", "OrderId", "ProductId", "CreatedAt", "LastUpdatedAt") FROM stdin;
    order          postgres    false    227   j       e          0    36746    Rating 
   TABLE DATA           q   COPY "order"."Rating" ("Id", star, "Content", "Product_id", "User_id", "CreatedAt", "LastUpdatedAt") FROM stdin;
    order          postgres    false    225   -o       h          0    36807    Returns 
   TABLE DATA           �   COPY "order"."Returns" ("Id", "Order_id", "Product_id", "Quantity", "Reason", "Price", "CreatedAt", "LastUpdatedAt") FROM stdin;
    order          postgres    false    228   Vq       d          0    36734    Ward 
   TABLE DATA           \   COPY "order"."Ward" ("Id", "Name", "District_id", "CreatedAt", "LastUpdatedAt") FROM stdin;
    order          postgres    false    224   �r       c          0    36717    Product 
   TABLE DATA           �   COPY product."Product" ("Id", "Name", "Description", "Image", "InportPrice", "Price", "PromotionPrice", "IsStatus", "Quantity", "ProductCategory_id", "Supplier_id", "CreatedAt", "LastUpdatedAt") FROM stdin;
    product          postgres    false    223   Hs       a          0    36693    ProductCategories 
   TABLE DATA           �   COPY public."ProductCategories" ("Id", "Name", "ProductCategoriesParent_id", "ProductCategoriesParentId", "CreatedAt", "LastUpdatedAt") FROM stdin;
    public          postgres    false    221   ��       ]          0    36665    ProductCategoriesParent 
   TABLE DATA           _   COPY public."ProductCategoriesParent" ("Id", "Name", "CreatedAt", "LastUpdatedAt") FROM stdin;
    public          postgres    false    217   ��       ^          0    36672 	   Provinces 
   TABLE DATA           Q   COPY public."Provinces" ("Id", "Name", "CreatedAt", "LastUpdatedAt") FROM stdin;
    public          postgres    false    218   D�       _          0    36679 	   Suppliers 
   TABLE DATA           m   COPY public."Suppliers" ("Id", "Name", "Adress", "Phone", "Email", "CreatedAt", "LastUpdatedAt") FROM stdin;
    public          postgres    false    219   ��       `          0    36686    Users 
   TABLE DATA           �   COPY public."Users" ("Id", "LastName", "FirstName", "Email", "Password", "PhoneNumber", "Avatar", "Roles", "CreatedAt", "LastUpdatedAt") FROM stdin;
    public          postgres    false    220   M�       \          0    36658    __EFMigrationsHistory 
   TABLE DATA           R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public          postgres    false    216   ��       �           2606    36711    District PK_District 
   CONSTRAINT     Y   ALTER TABLE ONLY "order"."District"
    ADD CONSTRAINT "PK_District" PRIMARY KEY ("Id");
 C   ALTER TABLE ONLY "order"."District" DROP CONSTRAINT "PK_District";
       order            postgres    false    222            �           2606    36769    Order PK_Order 
   CONSTRAINT     S   ALTER TABLE ONLY "order"."Order"
    ADD CONSTRAINT "PK_Order" PRIMARY KEY ("Id");
 =   ALTER TABLE ONLY "order"."Order" DROP CONSTRAINT "PK_Order";
       order            postgres    false    226            �           2606    36796    OrderDetail PK_OrderDetail 
   CONSTRAINT     _   ALTER TABLE ONLY "order"."OrderDetail"
    ADD CONSTRAINT "PK_OrderDetail" PRIMARY KEY ("Id");
 I   ALTER TABLE ONLY "order"."OrderDetail" DROP CONSTRAINT "PK_OrderDetail";
       order            postgres    false    227            �           2606    36752    Rating PK_Rating 
   CONSTRAINT     U   ALTER TABLE ONLY "order"."Rating"
    ADD CONSTRAINT "PK_Rating" PRIMARY KEY ("Id");
 ?   ALTER TABLE ONLY "order"."Rating" DROP CONSTRAINT "PK_Rating";
       order            postgres    false    225            �           2606    36813    Returns PK_Returns 
   CONSTRAINT     W   ALTER TABLE ONLY "order"."Returns"
    ADD CONSTRAINT "PK_Returns" PRIMARY KEY ("Id");
 A   ALTER TABLE ONLY "order"."Returns" DROP CONSTRAINT "PK_Returns";
       order            postgres    false    228            �           2606    36740    Ward PK_Ward 
   CONSTRAINT     Q   ALTER TABLE ONLY "order"."Ward"
    ADD CONSTRAINT "PK_Ward" PRIMARY KEY ("Id");
 ;   ALTER TABLE ONLY "order"."Ward" DROP CONSTRAINT "PK_Ward";
       order            postgres    false    224            �           2606    36723    Product PK_Product 
   CONSTRAINT     W   ALTER TABLE ONLY product."Product"
    ADD CONSTRAINT "PK_Product" PRIMARY KEY ("Id");
 A   ALTER TABLE ONLY product."Product" DROP CONSTRAINT "PK_Product";
       product            postgres    false    223            �           2606    36699 &   ProductCategories PK_ProductCategories 
   CONSTRAINT     j   ALTER TABLE ONLY public."ProductCategories"
    ADD CONSTRAINT "PK_ProductCategories" PRIMARY KEY ("Id");
 T   ALTER TABLE ONLY public."ProductCategories" DROP CONSTRAINT "PK_ProductCategories";
       public            postgres    false    221            �           2606    36671 2   ProductCategoriesParent PK_ProductCategoriesParent 
   CONSTRAINT     v   ALTER TABLE ONLY public."ProductCategoriesParent"
    ADD CONSTRAINT "PK_ProductCategoriesParent" PRIMARY KEY ("Id");
 `   ALTER TABLE ONLY public."ProductCategoriesParent" DROP CONSTRAINT "PK_ProductCategoriesParent";
       public            postgres    false    217            �           2606    36678    Provinces PK_Provinces 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Provinces"
    ADD CONSTRAINT "PK_Provinces" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Provinces" DROP CONSTRAINT "PK_Provinces";
       public            postgres    false    218            �           2606    36685    Suppliers PK_Suppliers 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Suppliers"
    ADD CONSTRAINT "PK_Suppliers" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Suppliers" DROP CONSTRAINT "PK_Suppliers";
       public            postgres    false    219            �           2606    36692    Users PK_Users 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "PK_Users" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "PK_Users";
       public            postgres    false    220            �           2606    36662 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public            postgres    false    216            �           1259    36824    IX_District_Province_id    INDEX     Z   CREATE INDEX "IX_District_Province_id" ON "order"."District" USING btree ("Province_id");
 .   DROP INDEX "order"."IX_District_Province_id";
       order            postgres    false    222            �           1259    36829    IX_OrderDetail_OrderId    INDEX     X   CREATE INDEX "IX_OrderDetail_OrderId" ON "order"."OrderDetail" USING btree ("OrderId");
 -   DROP INDEX "order"."IX_OrderDetail_OrderId";
       order            postgres    false    227            �           1259    36830    IX_OrderDetail_ProductId    INDEX     \   CREATE INDEX "IX_OrderDetail_ProductId" ON "order"."OrderDetail" USING btree ("ProductId");
 /   DROP INDEX "order"."IX_OrderDetail_ProductId";
       order            postgres    false    227            �           1259    36825    IX_Order_District_id    INDEX     T   CREATE INDEX "IX_Order_District_id" ON "order"."Order" USING btree ("District_id");
 +   DROP INDEX "order"."IX_Order_District_id";
       order            postgres    false    226            �           1259    36826    IX_Order_Province_id    INDEX     T   CREATE INDEX "IX_Order_Province_id" ON "order"."Order" USING btree ("Province_id");
 +   DROP INDEX "order"."IX_Order_Province_id";
       order            postgres    false    226            �           1259    36827    IX_Order_User_id    INDEX     L   CREATE INDEX "IX_Order_User_id" ON "order"."Order" USING btree ("User_id");
 '   DROP INDEX "order"."IX_Order_User_id";
       order            postgres    false    226            �           1259    36828    IX_Order_Ward_id    INDEX     L   CREATE INDEX "IX_Order_Ward_id" ON "order"."Order" USING btree ("Ward_id");
 '   DROP INDEX "order"."IX_Order_Ward_id";
       order            postgres    false    226            �           1259    36834    IX_Rating_Product_id    INDEX     T   CREATE INDEX "IX_Rating_Product_id" ON "order"."Rating" USING btree ("Product_id");
 +   DROP INDEX "order"."IX_Rating_Product_id";
       order            postgres    false    225            �           1259    36835    IX_Rating_User_id    INDEX     N   CREATE INDEX "IX_Rating_User_id" ON "order"."Rating" USING btree ("User_id");
 (   DROP INDEX "order"."IX_Rating_User_id";
       order            postgres    false    225            �           1259    36836    IX_Returns_Order_id    INDEX     R   CREATE INDEX "IX_Returns_Order_id" ON "order"."Returns" USING btree ("Order_id");
 *   DROP INDEX "order"."IX_Returns_Order_id";
       order            postgres    false    228            �           1259    36837    IX_Returns_Product_id    INDEX     V   CREATE INDEX "IX_Returns_Product_id" ON "order"."Returns" USING btree ("Product_id");
 ,   DROP INDEX "order"."IX_Returns_Product_id";
       order            postgres    false    228            �           1259    36838    IX_Ward_District_id    INDEX     R   CREATE INDEX "IX_Ward_District_id" ON "order"."Ward" USING btree ("District_id");
 *   DROP INDEX "order"."IX_Ward_District_id";
       order            postgres    false    224            �           1259    36831    IX_Product_ProductCategory_id    INDEX     f   CREATE INDEX "IX_Product_ProductCategory_id" ON product."Product" USING btree ("ProductCategory_id");
 4   DROP INDEX product."IX_Product_ProductCategory_id";
       product            postgres    false    223            �           1259    36832    IX_Product_Supplier_id    INDEX     X   CREATE INDEX "IX_Product_Supplier_id" ON product."Product" USING btree ("Supplier_id");
 -   DROP INDEX product."IX_Product_Supplier_id";
       product            postgres    false    223            �           1259    36833 .   IX_ProductCategories_ProductCategoriesParentId    INDEX     �   CREATE INDEX "IX_ProductCategories_ProductCategoriesParentId" ON public."ProductCategories" USING btree ("ProductCategoriesParentId");
 D   DROP INDEX public."IX_ProductCategories_ProductCategoriesParentId";
       public            postgres    false    221            �           2606    36712 *   District FK_District_Provinces_Province_id    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."District"
    ADD CONSTRAINT "FK_District_Provinces_Province_id" FOREIGN KEY ("Province_id") REFERENCES public."Provinces"("Id") ON DELETE CASCADE;
 Y   ALTER TABLE ONLY "order"."District" DROP CONSTRAINT "FK_District_Provinces_Province_id";
       order          postgres    false    222    3227    218            �           2606    36797 (   OrderDetail FK_OrderDetail_Order_OrderId    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."OrderDetail"
    ADD CONSTRAINT "FK_OrderDetail_Order_OrderId" FOREIGN KEY ("OrderId") REFERENCES "order"."Order"("Id") ON DELETE CASCADE;
 W   ALTER TABLE ONLY "order"."OrderDetail" DROP CONSTRAINT "FK_OrderDetail_Order_OrderId";
       order          postgres    false    3254    226    227            �           2606    36802 ,   OrderDetail FK_OrderDetail_Product_ProductId    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."OrderDetail"
    ADD CONSTRAINT "FK_OrderDetail_Product_ProductId" FOREIGN KEY ("ProductId") REFERENCES product."Product"("Id") ON DELETE CASCADE;
 [   ALTER TABLE ONLY "order"."OrderDetail" DROP CONSTRAINT "FK_OrderDetail_Product_ProductId";
       order          postgres    false    3241    227    223            �           2606    36770 #   Order FK_Order_District_District_id    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."Order"
    ADD CONSTRAINT "FK_Order_District_District_id" FOREIGN KEY ("District_id") REFERENCES "order"."District"("Id") ON DELETE CASCADE;
 R   ALTER TABLE ONLY "order"."Order" DROP CONSTRAINT "FK_Order_District_District_id";
       order          postgres    false    226    222    3237            �           2606    36775 $   Order FK_Order_Provinces_Province_id    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."Order"
    ADD CONSTRAINT "FK_Order_Provinces_Province_id" FOREIGN KEY ("Province_id") REFERENCES public."Provinces"("Id") ON DELETE CASCADE;
 S   ALTER TABLE ONLY "order"."Order" DROP CONSTRAINT "FK_Order_Provinces_Province_id";
       order          postgres    false    226    218    3227            �           2606    36780    Order FK_Order_Users_User_id    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."Order"
    ADD CONSTRAINT "FK_Order_Users_User_id" FOREIGN KEY ("User_id") REFERENCES public."Users"("Id") ON DELETE CASCADE;
 K   ALTER TABLE ONLY "order"."Order" DROP CONSTRAINT "FK_Order_Users_User_id";
       order          postgres    false    220    226    3231            �           2606    36785    Order FK_Order_Ward_Ward_id    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."Order"
    ADD CONSTRAINT "FK_Order_Ward_Ward_id" FOREIGN KEY ("Ward_id") REFERENCES "order"."Ward"("Id") ON DELETE CASCADE;
 J   ALTER TABLE ONLY "order"."Order" DROP CONSTRAINT "FK_Order_Ward_Ward_id";
       order          postgres    false    3244    226    224            �           2606    36753 #   Rating FK_Rating_Product_Product_id    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."Rating"
    ADD CONSTRAINT "FK_Rating_Product_Product_id" FOREIGN KEY ("Product_id") REFERENCES product."Product"("Id") ON DELETE CASCADE;
 R   ALTER TABLE ONLY "order"."Rating" DROP CONSTRAINT "FK_Rating_Product_Product_id";
       order          postgres    false    225    3241    223            �           2606    36758    Rating FK_Rating_Users_User_id    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."Rating"
    ADD CONSTRAINT "FK_Rating_Users_User_id" FOREIGN KEY ("User_id") REFERENCES public."Users"("Id") ON DELETE CASCADE;
 M   ALTER TABLE ONLY "order"."Rating" DROP CONSTRAINT "FK_Rating_Users_User_id";
       order          postgres    false    3231    225    220            �           2606    36814 !   Returns FK_Returns_Order_Order_id    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."Returns"
    ADD CONSTRAINT "FK_Returns_Order_Order_id" FOREIGN KEY ("Order_id") REFERENCES "order"."Order"("Id") ON DELETE CASCADE;
 P   ALTER TABLE ONLY "order"."Returns" DROP CONSTRAINT "FK_Returns_Order_Order_id";
       order          postgres    false    226    228    3254            �           2606    36819 %   Returns FK_Returns_Product_Product_id    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."Returns"
    ADD CONSTRAINT "FK_Returns_Product_Product_id" FOREIGN KEY ("Product_id") REFERENCES product."Product"("Id") ON DELETE CASCADE;
 T   ALTER TABLE ONLY "order"."Returns" DROP CONSTRAINT "FK_Returns_Product_Product_id";
       order          postgres    false    3241    228    223            �           2606    36741 !   Ward FK_Ward_District_District_id    FK CONSTRAINT     �   ALTER TABLE ONLY "order"."Ward"
    ADD CONSTRAINT "FK_Ward_District_District_id" FOREIGN KEY ("District_id") REFERENCES "order"."District"("Id") ON DELETE CASCADE;
 P   ALTER TABLE ONLY "order"."Ward" DROP CONSTRAINT "FK_Ward_District_District_id";
       order          postgres    false    3237    222    224            �           2606    36724 7   Product FK_Product_ProductCategories_ProductCategory_id    FK CONSTRAINT     �   ALTER TABLE ONLY product."Product"
    ADD CONSTRAINT "FK_Product_ProductCategories_ProductCategory_id" FOREIGN KEY ("ProductCategory_id") REFERENCES public."ProductCategories"("Id") ON DELETE CASCADE;
 f   ALTER TABLE ONLY product."Product" DROP CONSTRAINT "FK_Product_ProductCategories_ProductCategory_id";
       product          postgres    false    3234    223    221            �           2606    36729 (   Product FK_Product_Suppliers_Supplier_id    FK CONSTRAINT     �   ALTER TABLE ONLY product."Product"
    ADD CONSTRAINT "FK_Product_Suppliers_Supplier_id" FOREIGN KEY ("Supplier_id") REFERENCES public."Suppliers"("Id") ON DELETE CASCADE;
 W   ALTER TABLE ONLY product."Product" DROP CONSTRAINT "FK_Product_Suppliers_Supplier_id";
       product          postgres    false    219    223    3229            �           2606    36700 Q   ProductCategories FK_ProductCategories_ProductCategoriesParent_ProductCategories~    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProductCategories"
    ADD CONSTRAINT "FK_ProductCategories_ProductCategoriesParent_ProductCategories~" FOREIGN KEY ("ProductCategoriesParentId") REFERENCES public."ProductCategoriesParent"("Id");
    ALTER TABLE ONLY public."ProductCategories" DROP CONSTRAINT "FK_ProductCategories_ProductCategoriesParent_ProductCategories~";
       public          postgres    false    217    221    3225            b   |   x�u˱�0@�ڞ"}N9YH��) ���;�)��M�t��ݿ�F��'�`-7�PZQ�p=>��yܿ���qqA����
Xo�:Z�P�҄eE[)-�EEg�����m�1� �i%�      f   �  x�ݘKnG���S�>�AuUW?f��"b��7��XTbS	|��}F��Y0�=x��P�d�v g�XELw��*f��Rp��2��.�����}���C��A!�����|u4|s�}��?o_��V_��a�L��1�5�rʨ��L����J���д��i��г��|��7E��k4	YӺ�U݌�\��A��}��m���`u�Ch�|�Qn���=3A�ȃ��W�b$ݬ�>[����jpژa�0�ސG�	�Q3��đ�9��ʹR0k��k[��cmr6�ёq����������'��|�����lut�� &�6.vm��N]��w�T�Ss�tp�0��xfg��dw��a BY�⫶YN���!�β|���"�U:���$?�鉂8_��X>ܜ��X���gC��.����a�9�:��%���'ۋ_W������b.ŷy9���g��<A�^���	ƙ����	�0 �k�WQ'�1���-�E� -�h��Pu��`���ٝ8��`-���D�n/^���ۋ�Na��zXK|}Ms�����	p����!�7��v���:��KɢVd��N��SMX���.��K�?��i����VL�m��Ei�pRh�qZ�(��6jn�KJ�R-3M�Ї�HP}�ܼ(K�p{�ꮙ�+���4o9��5�Pk�J�X�S�F?@�8N����&�.�6_L�:W*R����8ҘS�-�-��	��
�WL���@��h<��PD(�&t#;d�3�ne�Ev��5H����ڝs��Ԡ,w�}�"�U)ا��x{���Gܩ*�C5�ц(� Ɏ��٩�=���JNf�����5���!%��r�yC��e�}���dv�����tvER��<C,���y�V�Z�n5h�� :ȝ�mեdE�s�k��r
39��2��f���YI^�'cw��cC�2$�.��m�Su����S��c/'����Yɱi��dO��C(oE��J�����b����_�A<[
�ǁ�iJͨ_��OU�a#���~�8F�f>�nD� cO����7Q Z�-�1�n�%L�����@"��AP����|�7켸������E��i+�ˎ ��L�ȷe�\��Pt������LBlF������QK�Y!�.m���JY$�E-�&�ҎQ�-��4]a���rt_��}|�Ԭ�Fg�9LS4�YjD�fg����b�7I�˟      g     x���K�9DץSx?A�$Qg���?�d��Z��p{6ڀE=���k�9�Z)�MU�HՋ�"�Ș�Eu":��6�{�D�q|֙ZQIuΝKeu����J<��ѓE��:�D���}��q�%�$���t;��n���_o�����fNV�����k��t丈Y��)�nc��S�)c�R��m�.j+9����8��1�(�h��̇�U��>8����&���,�����Iښ�(;�����\-r���X��� +w�R����,z��|��R�lB�|����@8�g걨eJ#���S���hM[�㏨��|Ϩ��'�ݲ��J�X�^���Fި"�[�_���.��粒�:�C7����������=��=YtU�)�p�k���i=�H�q����=�U=�}�P��۾�i�&rr=��+���@#D�T@�*�n(�K*;?R�FxZE�227f>8�ۉ$#����6�9*�fM���Ȅ�Ǳ����W�Ȅ�<6���9�/��U/j�S��E��;�G��|ע���2"��(�S��Q��+Ps׷T�Q$*EE�F�^є�+m mHy��S,=IOệs�+�(D��:d�;��b	�rj��m�b5�O��-诉��~	mhFÍٯz�@���:s�^<!�~��]�;��x�����V�b"�sN��4�@�̂;|}��Z{^�~d:'�o��-W��C�'�'ч<H��%h(q�o畚��C�k���?2��[�|8 mW���y��G��Z���Le]�7���pw�Y��*�����pZ��}�&�rd���ϳ�STL���>%c�̣��cŔ���\��oJ^�����I�q�(L�	�g|�b;���p���%z�X8�\�S���փ�E�=C��յ4�@���P"�%�1�����'�f����d����LCE�t��i��;(JE�piǵS|��PSn5��:��:+�캢9��<��#�F�v�ԘJ
�NiW��3���Ѐ߱���hat��qw�Z�����k����tڨ��2��������=Иk�"�^����-ǽ3�r._q`ɕKe���"����MFw�k�k�1J�6wr�� o�h��Z+Wa�a��!����G�/5b\X|�q�H|`=��Do��`���k�)�����J��=��'�1rf�a��q\0�vF�c?X�uh?IXf��+��mq��2n��B�h��V���e�	z��qш����u�y��h�&��h�t�����_����������      e     x���=nAF�SL�jU����5׀�I��b��&���H�8a7\�{�M�xm,�d��4]��}Sc�佃�T��!�"�4T|��؁����z3]���ϏS9�޼�.�ݏ��]�W�!�T���Tp�TjVj�d���!�Ą�PI��j�*Au�I�/Uk��A���dx�0#��'��ŔlOǈ��*��1Aj� �}h�s	v�S������>�w���������f};m/?�����f=}<����_Ǌ)3Iύ�Al!z��i��'4��hV���s��p$�>���ю[<�*����������;���Aٶ�L'����/]����c�g�W+���CוR,�<ujcE���'$�g'+���=�|��ɕ>�Y`��$�JK��ΞBhַ��*}\L5Mb�l<�=C��C��GTO�����3㌴������6ͤh@��'3��	1��-�s�x�E�ؔr�\��B4(�&�(�&l�Y*V.]����+!�V��ԇ?�`�d��̌��,��r�C�G���8��V3`      h   f  x�u�;n�1�k�)�>��/QҞ%���7Hb�AR� �ҧ�]�${�Н�3��͠�J{Xtw��ݚ5����\�v�	�<L�3�U3Ȑ�Xt7��芽4�eTiB���:y,+UГ������]�k�8qa���zA����d��	ˇ*Y��U�Pt�Z�Mj�\�bu���G���V��k�i��f�;���{Y�p�*�3A�8A;�9ٗ4I�~ܞ���������ח#�5|OR�Kn��.Eߑ�O=ͭˉ8~���"<[�%M�&��&���W�%��B�$#ʨ��!y�Ÿ�?���Ȥě����%*��ח?�w�����J��B��K�s&������|:����      d   l   x�}�9�0@��>=�h����M��+$
�/� }��Z��Xc�f(�hzV^�)�y|?�&Vl3�
JsA�L�ŸW�Gcd܁���"�$����om��:� �      c      x��}�Ǖ���_��2������
lّ�����p�����><CʜX1�a�n�Dc��ʉ`;�"���@�>���&�=�TUwU���	���]��N�:�߉�z����{F�;��u�6�fEn��߈v�x^{�����ڍ��?�ϫ�g?Ӟ;?��e��3?�.���������-0�gv..]���as��'���ਸ਼�;l7������ڃ������ވ��k����K����^��M����ӓ�6<?�?��g�h��O⋻����Q�<֒�&w����G�8i(��Z|~�ɠ�u�O�6���v��죎���Z������~������g1��W�z�O�ɗ�pr��Ə��i�g_��lE�'_k��݁vt~v�:
��m 99�5�Mx���9ӕ�n��
��`t|~����D��ɟz�*��_b�ށ/�Z��I�w���xp�g�&'�6�Ճ�8���֘|>�ݡf��w��W?|�>�5�����F���IGk��#�����]�6�����]X�Nkt�������';ݨՄ5�ta&��ͧ����x�F�N��y�.���'���8e�z���j֫��a��U{��i��������9h�����:�|Tmu��w�i��=�6C�5\�I-:>��NJYB{���=���i�O?	=}Rk7;������{�bۺt�=�
9���6�����0�����q��@��.�~qtp��A��˓;=��M��N�����G�
������hr��qi��pzހ>����"��t+���b���z��y$�|̘�v~��H���^О�7���Gç.�/1&��]�n�8<?�2��Rfk#�ީi�~k�W�t����fF��1f���i.�2Ժ���f��1�|��������&/]y}���5-���n`V}���vq�WcT�/0�,��Ȱ�z������hpЏG��a���#�lʳ]d3�X�[Jo���:h�8��N?�%L,�/��H�P��Qs���i0oU�2��a���c����`|�k�2���V��+�~�Ց�c!rh��MI�t�(���CŮ��h0��t݆]
�5��dj�&c�������<jĮ��n�wz��ٹt�d>���6�΍��(��v~�v�r���}ۥ�S���E�����۱��a��c�5vL�4��k�݀���ϫ�FÌ��oX�ޱ� �\���n��{z`ǖ��پNS����n��e׬�f�U��� ������u��'��5�=K�����ў^7�=}/���0��~�7WM��/�Tp�+���D7��I�V��nȴ,�%R�*���?z�R�gm��87��T�X���SO�߰�y�����G�bt JXg��Hv���5�������j�P9��>T3�X_tzڳ��f:$�A�:�:ɵCЂ�\�=������:��=���+빨ۦZ*��H�u����Q���ۿ�}}&��"��0Ju��鯈)��ܜ�	5����g������e��I���ԄDK�I�g
���U�^���4ݞ�=���c�l����Y���Bz5[����n]�:��}�t�[�}�VW�E�U�*�}����t��ɗ1v�} �~����1����xE��>�b�ǌIٚ��e��kO�	�b'�Zgc ���Ӓ��i$���ӻ�����j6�[NN>���ɷ��8���
�C
^)L���1�eP����P��Z���e�U�\B�N0vj�	�R�}��f*v8��;h����$�n� ZA�en�wA@�L��O�uk��jr{cD'��XM�q�F���4}��#l峸������كƓ�nu�K�i�oγ�!�4ǜ�4�%NW�rxܙ�x�Eⵓs��]�U�:{ ��K-<j�x�u]��Z��u��Ho09�Q�� �f.����̫d��K�jˢ��25�!�g$�OEte�8I�U7g�͏�>�4��������fQG6:d�5N2:�e�\"�a�bڰK"�	Im�/J�R�\!�-�
�-�m/%�M�������e#�en�6�en��+����2�H!*�\
�h-s)���x�W�>��}`���m�k��*}X��������]�'w���/ٟ�v�4
��/C����2����/5������*D,�H�e�w��X �61�[�HI���,r@�|�)�.�#)�4DJ��Ѫ�j�
��d/T�9�vY��A��#�#F����I�&�&�ye����4�j���8,6.�#����@z�ˣN�#�gsd�,x�`r��v�?��h�ɝ���|$h�ð��g2|p�l���o݆����Վ&����/:Ơ�?t%?TNU??�E�u'�C�����pHfɸu�!����(�&�k��v�e66G�B/����%�9�%�P��O{�2�3$2/c�:���"{�G�>i$�K!kc��t�?�{��_vf���Q&���0�A�Sw��BD_S�\_��I��?�8��+�E�n�X���쉟E#��q@2hrӬd�κk��pd#�\I~li��G�'����i�l���/��hr�K��RF���Fp)�Z��\�qYu���k���m��R�p�2��0k�>���G���L{��o���~�4����[���"�g��M���v�y��Hgo��v�՟�A�pEr����,Se�L#�+�����JO~M��β��rR�����]�wL'�Y��1��E�YQ���&���(B�;4aw�|b"x��m��0�˃�$�i�r�zJQc3%���X��?�it���&�*_'4=&+9�� f9F�XEn�*��?C�<=C��A���xf@a&^��M<ˠM;����#��a��p�����mY�������N̚�,���e;�a'�cUC�6-Jy�	���-��
o:�^���:4o;V�[^=�v��u����M��7�D|
a:<e��R�q�6A���hz�;���RDwU��0�-�L�QI�
�x`��$������#ڲxEugX���P�!q�>��_`����y$�>�.�����ِ�E[���:R����q���a:�K��!��&���$x�M�л��qO�
��G��}�jl��ҙ�k�A�`L���� )R��*r�6t�������!�j��aR��Vͨ�3j��� F>������OF٠����c��R~*L��d�=���?��"j���=��}ɬjk_�}f��Q���Ƙd|���#jlK�o/ӨI�iLKe��̘�E�gU4���fŦQ�����i�Z�M�9�O~B��GU��̭X��ʸY�ȕ}4�R���1��9sKyS	��hh��U����(_�Tv�r�<�q��N<��2��P��tL�M�/�z-y�r�PN����A�+k/O�@���8�*)���HL��$Z�>��H��T]�0kU�$M���r5���!�:y������@p�B(�3ϒ�;��ƅ�ՃA��la\[@�i`K���d��i��t�[���l����G��k���
��P���V6Ɣ�<����ER�Mi�t�$�J�c䙴���ǳ�-,O����t�|��VG�WI�#ro����R�b@�'z,���zg5�SE�NI���`b�W,o�l)�v��D4�Q�t*K4c�� �m�� �aoaAP�m�-u�%:py�"���u�����$���s�t�-��������(�O]�`:�����8A�Δ���A�|EEP�TQY�%�0�Cs3��C��LM�vl�B+ӟ�3>w���m�������,�v�tj�S�є�N[��o��D`�u�0c݉��Gu��M�٨����ͷ�_yarK{���T����7|#\h��,�#r����e2+Wq�&3���`��ys}�Fr�27�<:)�@�y����^�\}� �0;Q�9Z�&�I$uj���85ղ�}�\C��EhV�"�@�ݦ���t���wqx3}���G=șS���2��L���M2q���өĞ����o�N��0������S���gH���    +RiѮ�v��&w)B����P9�[�2�}OJ�}�3� ,��M5�ƇC��%V�TśI�+w���ʄ�#FJ�FfbA[e�T2���I��0�I�5���I�������Eq^`^޼��Lg���ʼJ�1&�FƟ!<����r�=tg��ޞ�j�����=�ƿO�yZ���.����t������q��ά<7��]xn����S���n�(ZpJ[� ���H��Z�)gW�	?�ߜ�ch¶��Ɯ�}X�,ޞ���;��ٙ^.|� &'R�Ҕ{g*nca�E.�O�ℹ1��|1�g�	�R�0W�̎�ܣr��WD2�������a���N�6�y�˟����<��t��k���<�_��cj��l�j�K���<�f�5ש9F�u˷P籌�cD~�{M�l�լ�u�a�M�l�>W����������W~��lb��rZ��G���^�G���^FԮ΀m�VQ9�'YK�JaqT�k�"09�Ϟ>��ۿ�.?<���|�֬M�ct���p��	5Fۄdԇ�pc���PP7�G
6�I�^m���ʬ_�y|��W��B:C���$�m)�0m�&z���	�� ��&G����~����HGb��*��C��f�
���'�w��!�/���yxej���:W*��Y���0��q��LMb��ɖ܇�~�+3S��B|(�4���/��)㡌�d�8�-��c�O��<W��K~O��<�F��Y�f^܅�D����aW3i�d�)6b4l��L=5�10|�<3�4�7���d��kfB�M��!X�.@j$����ȿ=f^�l�m"\���D3�/s�����J�}�2v+ϸ�ӥ�t�EI@^���5�P�)����>V ���k��9c��8+ڽVGr��Gr\jH]�A���+$����ж8?%�%�O	niH#\sA~ɑk��5s.St���ȎDv�dge#��U�r4n
��t����T5�Z:���Nï�L�頂����,��`�v�6����t�3�q�ĒN��RT��|:X�q����*T3E��[����>o�ힷ�6�[w�筻�����y�nr�r!���%7?E�M�6����i�r~��?��
W�/��IC����A<�h�u~Ko���d*d�?1g�uP8p�n{+nu#ncnqnS����|�e/�	�#2���ǎo9��e��ut���d)4h��j�&��A��e�[l�T*��v9���Kh@��"��d�SNn�#��&�m�D��{"o0�<�m
k���ڦ@��]7`��]nw����6���&�;��vg������vY���{[������V5��Y^SQ�X��a������t0��e�i'pմ� ���c�+�1�5;���i��(�ޮYf�]��1������^ݩ�N���^0M��F{��4�����׮hϿ���/\~�%���Î�=����4�2�Z�,Ytk�y�;qt�wa�q�.S�@OKK{^���B�sc+�E�_�`�\�7Ì�+�T=LrL�.}�N��|�'
.�����z�vw=�q��ŌjR�� =>����X.���������T̜�d�E��S�g�Qˎp��>:(���eg'���LjѼi��s����5h�x��Z&�O��&Z�ivX�w��RS�냙0��X<gI`��j3k�4�Yݪ�����T�+۶t�77���O#={���ϧ�*+T�:v�9#����пC�~��s�29�g<�YZ����sAfJ˴N�+ͅ��\$pnb����U�}��Ȱ�
�¤�|��g��������t�܉�/�P���~<n�4�j��#���k���U�*Ɛ%)% .y
덲�/iyթ�\��M��ߙG�7¡���!�©�Q�2�APː��l���
��t�T�.X�����|�3�**J�r����T
��s�b�F�kQ�z���"Өf�hX��툜�gL�Έp̔��!O��%��9�t�YLt:��N����	���2�\ͩH���?�q=��7Y ��)�[i���U���(�9��S3��图K����� Z��fCwo�Q�A��N腞��\ya��5�k�.xF���gp�L�_��K����rw�W�t�{�åִ 15���fQ�LQ ��ESe�����,q�J�υ^�Ԝ46���xWc�B~J�Wy��2�FTuy��9E�(D!"k��pb!�ҝ�6�h��Ś@^�ՈRP����]8d;g̼�c\����X�:ƪ��/�|əp@`�!���K�8�ԡL+���㟳 r.��9\���@a��p�3g�uG��;��I~��#�ΙOJ#�<y�y��+%F`r���'_�Yb~#]���\��� Y�+v }(b�Ɇaߑ������%��1/M$/KD:JQ���蘌	t���\�ɗ���,���Ҳ�)wۂn�����e�,*���#�Ԕ��w�Y&��F��-�u2��������ׁ��]��M!�c�;Wz�U�
w+���a��Co��֮�f�w�.B�a
�l�nM\zֱ��!��)��pA��b�?����G!�O}J��`��˚�H�ĔӚ�>ŕ$\�D2�iI>�ĝ���W Iƒm��U���\B�͉��(aC�[َty\
��v�7��U�"�`��' �i�M��<�����h}��q�y���Ѧi�c�L�M�r�_�8�M�h��VI�|����JE5PATL��3,��zL���Qv8F8g>HD�h�O���Ӊxȡ��tsWd�A�T�nZ�zp/"�#�5�l J�k%�,�*nI!���?�x�b<5˞�����RF�����azOD=��Hq�tJG�ģJ�E�4��y8��4�o"*C�u�f��j8qWF��ʔ��pǢ�œ�2�!U-�u�~�X0)y�p��s�}�'1oDv����qK9�e!�������U(��k�)�'���I&&��1�����s�PY@�9ۓ�>MNcO�`���L)*0�9���&����QL���x�a��H?3��u]���6�o� i~��Cg�x	�g`���(�{�"���oWM5_)��Ij�s��x����2�����¸J0wAYm3�.R&����pI2��,�=^F&��$���u����5M�];�(wС[T��"
:�ۼ�a��XZ^�	�(� �D.A�%�;��]�B�'U�6��������5�.��]��>��p��Miv1��<��+b�G���,�h�/�E3�>�k"��di�~�Qn���uY�h���ި:ᴐ�F�-�E�ܠ\��6_ơ\�M�~�N�o�e�>l#��Q��gF�+ep�h�!4�nY��ҁ�6WZi3,n��.�w�6�kԏ��C.ӑ�ϻ�u�ơW��$Q)�ǲ��p�r��u��a]I�G�\�4NL�fL$q��"m[Y��߬���>Y���Ze����յ�յ�յ�\]{�k?���<&�딹�_]���u�Yݠ��u��u�\]w{�}������W��z|uKQ�%"+�n`13��O҆-g+V����ܙ�9�A4}��Z6�F�LCT�u�� ��f�[����S�<�^��t�=�۫{�U_',��k�Qu/�|%,��$E7ĠQ�qL,��7+=��~������n�wC7����_%d\��^�.�?�q����x���9��Q���T^9�+�m��NC� ��;j�y�uV�\tu&�(pr
!l�c�M���b�xi�7G�I0��ڣJ1�,�1壆u)H��<������*���b|D-\x7ba��P��o;R)c;���S�7Fi���$d��"�ç�B�n�*�Xռ�Z0j�S/��$䪼P`������6�H15b�%VH��e�mn�]ed.���#[�[��匹G�r��1K��(���V��	V.ꃩv Yx�r���|��H�GQ�����)7�'#��עPM
??�0��m��7>a�ǷH�p�D
�l'9%T���+�ì����!l�t�55(�Kٮ�1r���e��*ƕ�� )�PO�.�K=F-WSG�7)�    �5y�)���9��t�'�핤�<;6�ES�*� ǩ��+y��E��Sy 0�m�ߔ"�1�BDӋ J\��4,ǂk�q��8����ѹu�j4�
�9��]�N倥�-sS�W�>�����+*�{M��&�J�Qy�9��څ�^���A� C�=��-ϸ��>5;�$�Q��|!��Wu�����<ǔ[��n��X�\��,�WJ����س�kL��hlKڒ��PPl�"9gj�����������3	$:*@g�MH�+H� }e6!���҉��x"����Z�D�NW�h�6W�fb���\��r�1�+�
S���%(���p3w��;:�􍋙��G��LAW��b��k�b1SЕh��/�:�h�sZ����-��k]�V��E��n�)��c��|XɦLp}.��2�*��ʎ�]���>7�5�*�~N���y�G2�f��KNQ�y���ey�7����˟Rͱ,�o:�3*�`f�=V�4��gp�Ji��#�W��=�1VQ�eH�y���(�PP���=���Y�x�it�{}S�g�~H9p��6��5J�����cHR6S��B5 Sr`O�����k��~6��N��`��c���x��Z�x����f&�E�1�0H�{� 0���g�N�i�Q�	@GF԰-ˌ�u��]s�j��#a\x�ijFPs��mT��
�-�7�Q�7�՝0����z3���43��;oL��|���5�����"�-k˖μ��DF4"�m�_Qʒ� ���o�;�U�29Rʙ������^���Wn�^�Ɗ�]�ҫo�
Ǫ�٠3��P�Y�S�?f%*ئ����Y"�*)2峈�bX`bǻ���^��o�����`���4�!D�F�1	��D��/H��o�,mV�+2���m�m$"P��TΉؒej�=5d���#I
��(�=-3�eE�3�1i����� s���=<!��UQͬ8[���,��I��t����ḙR����a�+�Z��F�%����IE��Ҁ*�~�d�3^:=�e�Qu�Q���q֊��s�[{���ӣ�:�j�5��"��d,�,��_B 1�����!� �`�pT�d�P= A��6yf�A_nF�J��,2��L�Wʄ��7��U7KW��j��,i`/b�xZ�]�9�g����lSd+���0$%������341L�� �Thi�a�n
V�K�{0=
{jy�=�L~:�o��G:�>d	�T�S =�+�
�$j8iE]gy�y��#_bk9���ʽ�����m�'�Œ�Nee8q&B�35<��{Hz�MZ0��+��(o+�WG����_$F$}RT��ߋ��@r���S`s��<f��&�ɧ�3��gi՘�׮�P�Q�TOE袅�|Oc��e�]����a�(�LeD+g�Fi�ghR��@�HjزY�ALu�2�+/`�כY�����1[���K�z��&�������U�dڥԝ�?0^?��[��T�S����Ϲ ,�����	kr/��H�t�(�	n	�Jr> �`E�$��CNt%�	��g�YI}|/&����稤L�
�^h��k�SQ�ܠ��{��9 ��p<�8��e[,D��ؿ�� �@{��豞	zs��z��-�	">7���zZn�z��L�q]_��}Ъ�����Q�\{�a��\s�*P�@.��'����Š\7�T�=Co�Nu�i4�;W��N�Ä���e	E��^�A�0���2�
�f��n�霪�*�xkV�(<?{��d�i p�Ʒ���sD�1��	5����j�W�կUq/u7�]؛��hM6��d�a�q�����5+LGD����s�]׵6H�6�]8q�V���|�Ut���4o�P�e(�T"s�t��(9cwQ��
}�Z��Ҩ�K컹���c�`�{�L���kDK3���h8���d,2D]�G�ʄ�kk�ה��Ve|��H7���y��Rv���:�c1b8�Q�R(+&.�1y���U'��U�y��L51	��er3�3�l�� :���r��H�����.��[�� �.�����ҵ���<�C�.Ѽ�8�A&{<+3W��Z�nН�2�ߟw��Rz{���&��t�K���᯲���'�f�A�8��E�z�U��Rǯ�F&>ū�x����k��������v�|��5-\��$���m6_Lr�b2�$�/&SH���j].T��M�YJ V�8�A��KP�H�Z�>S���,��U��z�}��ٖ��kK��H�-�P�p[L�(���RQ"n�1���>�Xnk���킠��ʡ]���ٸ���NnEnj�2�c�E����n�2�X�(L���/1oYZ��ԣ]�Ҷ�B*�.;�-֮��%y��j��&��rdt�~7|"��M�޶�r
%��^̏Vʏ�N��b����~�\�.Gf;
���Q�⒒ۊ� �|���<�����zz
۴U�ߒޞ��*�o��?��_�ny��A �˓�*������ޮmy[`{��ooGg�q��o�	E�62����q�+�nX�+�h� R�D!c<VId��H�}D��%<��4��.��aD�2�����7�9A:9�2i�ob	��nt�.�0�m�\B��.9r���̟��׼II��>����<�bٰy^+l��L�8��Y���<Ȁֱ����Ǚ�{��@�컊v0�|�1��$�C��g�F����%���E��m�#t7+-��fEj�<�Um��n�9��U�Apm�PL�^)a�R�����\ɦ�ӱϥKz%����}��b�!���*��A�v�p�v|ñc[�0��Q���3B=��=Ækh��*�Ι���y�#Cp��ë�A50�в1���Du�	�/t��=��;�7V�i�����<��#���g��^�n<��Z�b ս=�uO~���@�ѓ<��2��x�n�u��!{1�z�m�o�O�By��H�G���ǇHg��y�=����GoSY�O�KQ��pO��jS�l��="!��R�E��]����������G��-�)�C��m�w*���['����ɰi�4���LN�l`���US�9�'E-s&W���
9�˳3�=J%��g2:�B��'@���P.�A�G,E;��6l�
��6%v���Vx�-�|�t��Ч!M���&��[�$y�kZ����"\���ca�L��b�L�쌑a���l�ܺ������-"�{n���p�m|�����+	���|c���0�m65���5oBѥ�N�
��B3|{�Մ$	�N�+��5Mcmg�:A3dPQ�fJք0���Ժ���慮�5�L�+ې�\8%��������f�T�q�dw9ƱdƁe߀q\���8^��Î�5+��n�T����o9�qY�8�p���N�9~���o�U�������mb֛׺36ͅ��l_Z\X���wEaѥsU��4��&��"J1�������R\]��mz�̀=���䜊Ɗ��)<��î�J�O&]��g*���싨Bɜ��z��)����?r�	�S�ܟ�NC�_�E�Ko�����0�����кݙ	2<�G��఺���S��[���9@6K��֭L��1�t-��v�1ӑ㨗�5Cqf���A���ļr�s�GZ���.��Hp�9ɍ2�L�K��r{��(Y�H2�[dm27�1i�$@��\��d<��Z��ؕ���C�;]�q���� ��K��F�w�¿7��>���L#�?D����ްz�~(�®�L5
����F�ލ��ă�*
��� �d�]+�6Ɍ�?z��Q4���w�KNғ�
��M�b��2�?��E͌�:q�a�|�3�sj�6��~ɀ~o��d��u����K���ۥ4��	da����IjbO�H�z�%�I6���}��k�Ύ�Z�R�]���w�f/�H���J%X���K�|�tJ���DJ���DJ���#)�2��)�B&�Y��2i<�[�2I���o>��'��^k�|����O��`y�T6 >����V���&����()/ʑ�,3�{�T�4��G�c�<R���o��q�L�+Q(S�dJ����-'R��   �J���B�b6C�2�)W�
�*U���l�@��|aڈdQ�����E��k�;��ӔL�B5�U�dE
��D�|Kd��D�|i�G��K��"w�mC��1��*����{L��D/#�Ҭ:)��J�G-*��d��\���	�Y��8��(��spm4V�z����v�c1�=8$ۇ��}W9Z�U�����(�IgU;:�wa~��A���m��1�ϔq��"���o�<Y2T�<XTR%�+)����P���D��CE�R♢���#E"T�"3[��<��Γ���e�~���;��t̬<H�*]r2�#�$beʻ�L	��ì�+�8�e�P�|�J�m�ʔk�H�2M0U��L�dMY�@��0U�l���G��bjʯ��Z.����`B��)GA��!$R�B
�
!�P�bc(Y!�҅1U�B�F�1 ӣ��H�G��?�D��$RR���O�v-���e0G���}o��a��T0����vY�������N�n3�-}ω��ꑧ��ўn�gx{u/��J)5���T};0CS��h�UsÚ�Um��}SJ�(2�j�~��Н��a��z�ix��س�`������^Í��g?Ӟ;?��e���[�+秧���u�p��;��F� �\�#��!^I�ͤ����3��7�j;�L�5d�K��%[�p����W�n��|��N�x�<��
+4�5��]����J���K��mc*r�8����VV�V\����,���Qge*U$y*��+ƞ��$�4p����R��>_�����Ѝ�|W��^�}�
}�C��B���jE2�`�+�M��TDQ�.������z�e[-���`�XUH��gh��Tl����أw�!��8͔:GT�IA��y�������n�b(^�2l 
ضߢN�Ee-Ih]�e��8O�!S����NץF�?	�i�ķ,��عཥ�l��� �[n4�2v.XoYB�s@zK��
;���h�e�\Rز��cg{;�lo��������c��ȶ�Z�X�KT�������Do+�/��[�	
�+Y�Py,_�Av2[a�B̳K��[���a,I�<v�����v���;{�s۾���i���Y牉��J:h�u+�v�P_�`�����}�Q��j>8?�H@kf	���y�1/�v���}'-o>�����8����K��r6���
��|��:�P>����,)���|H�����O$\�gy�5�L��̙�k�^ڹ�I4 �b��1lb$��ه!y���:�\3� ��v�k?5�p�:nn��-����H(��* �H��NS�d�`v<�6�8��
�B:1�Qw�M�Y�{.v�iW��t*�Ll/1�Y��>��Gm��s�yx�ʻ�p�o���?C�0��R�e���,���j�����jC�aʙs��E|T����*�O�I�]�*����C۴l�B&��'���������vs�Ȃ_p���	��FǼ|,�`������j�WR|
\�m�^+b��;��[�����p��M:�
}�v%b��	���+΄ї D�ot�.�P�:��Lŝ-#�rYɾ`�(�%�3^�� �9e��h��Qz�L	V���!���H36�{/%� K��l��	xe�'�Id9�o�&��Y��ܙ�?����-���;���M�Ӷ��W3��z�{��4��5� ��Ȉ�e����s��,��5Ǫ���N�ӡnZ���L��t��L�;���ЎA��sB�	|K�`\zhF� ��vX�w�\=?�/���b�w׮h�<���n������p����@�����"
��q˱��A�^�6�ff��&��X�7�vʗ�n�-�U�P��P��r�fw5f(4�[S��%�$�T�^&�^�[���x���ge��-�����2K :x�9�"H`�P�d��T<�
IS.��gL��1�O��,;�B	���_��i$�_u8�����"��Y���z�fՃ�m�W�l����)��R�v��T0�V�,j��/@��0�hSU���Rh �^<�^Z^(�
�Չ�>�ͪ/��.&��%�+�8�b<��[ɾ��>L �@#	w���-֫vCk��5qB���1�h��o���#��L�x��-��c���ͳ��x+mX5���6�Q��@w��N3���.R:�Jr��:]�]e՚v�>�j��Xծ	n��V��-R�Y?H�d��#e�`<�����I �@7���L~s�������'_�:��� ��ٽ$2I]ž+��&��!�~�:Mr���L�Vk���m�)�7�7E��p���m�&Cܧlڂ>���Ks�18i\�����X�S��RT��x�j��i%�����7�T����nD:6
��ر�̸q�Y�HBfE�6dx��D�6�KJ�d�J�T���,�pD�	�E��E��B1"	���m���%���_���f2�i�j2ĆL-JI��w�5��38��tm���.׷�{1	�j�wV8��p�k�F���a�)��LkI�4�c�Zo4��:�8���A!����c���*��/����՝N�:J��T��.��s�~���q���C�����
�Q�XJľN*8Zj`մ�a�?�^��ʣ̎x�v ������O��+�J�Z��.����]}*��Z�-x���(}���ia�́\IWbs
�C(!작8�A+/_��s��Q�t��s�jN����Σ�59�<��UY�e��R�X%���,�"ݕ�s��O����(vL+I�0v�z�M��Ƕ��N�g����k��ф���u�',��z��rM3S�����a�E�z4^=Fd7�]��:���C�����ދ���y�b���w�j\7W�ǕE����ќ�y����ɶ(\R-��L�M�鄰�gV�ҪWDQ��3y������O��� fu����ByFc[�̜d~�����z�̴㤤`z��	����Wh �J�%�%�0��*�=��U������&���۶�Y��t�"!�t��
�=%dk]M�mk|����?ݱ4��@lݪ�~7C�<���DT�K�$h��fb�O�sm�/Å���I��p�+'s�{k$�T�p�~,Z��Le��ؒa q�I-�!]͇̿��Q��x�R�	a� V�+������	� ?U�^��II��ͪ���#��D��o�c�y���`�#���DMT���[��0	�%<?
��܁�_h7c.�b��#,��(7քT��7�g~���!��t��1�y8��Jl��(SS�`���9�;cgQ��� W�%q~����ZM�'�:�dg!���Mrr���G6��^@z�\�9�m��,G{L�66JҞ�:fi�H��[�4mc�4�y��vq��œC�\�鍞zueV�d��m���o�賛.���(���_��i�����c��[��y$5wݺS9��F1L�����ת�
T�-�U�p�]\����"fu�2|�˭�;?I��w|�����cfB�/���v��Z�~��i9��',�n�5׭�&�f!'�w��'��:�V<      a   �  x����nA�k�S\��4��;�{G�I��4���9B::�������%Gy�	+���s��I7�����[,P�����㛄�m��]�}�^����o�����������K�6hh�T"�J����Tg˙Ac�1��G4YO�_�?H�)�Z5�	er�w��^[H�Tb��T��0��m~���O�˥�l����u����p`��<�=i��r���:�v�4� ,	SU�T���b���i?�ׯy���Z�����h� �J���iRqS��-6'��S�((-K4yvr���
���Έ�9������uuD�Yɢ���)��w���a�֣���%�*Bj���\�m�[���>�Kzđpd?$���K��S�MP�ll�T�3�q�'�����/w`�U�F��m{ ����O��{q�+��Lr+��ޘIglC�z�8�n��R�y�Z���~��~;{)��LC�N��{��[����`H*�      ]   �   x�}�=
�@F��)��	3;��V�4�����&��Ck�`a�	�2^$71�A����EF��!�F��6����6[J�u�)��|����{M_��U������B�(�*��J�����S��>p���IAtɀ��<�������,\�m�5��2\����U�8�B��C@�      ^   Y   x�uɽ� ���7G���wG�9�_@�{��"�Gt�2:�j�2n���#���1՝:M@B���!7a_�=mȿ^k/o�� ��      _   �  x�uP�n�@�g����X�y{+�F��n��X�4'�`�+a�)(!%RBD@��Z����'(������{U:5�'�Th�y�$֬�X��J�� ͆��������mxM��Y��a��}B�����
�7#�"��`i6��]�����;X��U����;x:|��᳋ ?�lv#B9ӂ*�5j���tܹ��rc��qQo*L�	�t��)�1S,�b����<�%S*�����s!N5�X�����������,�c��vp����j��<���
����,�|q ����1;�����eiGx+�5�e��} �n�q0��M'��#$k��sp��aξ�ݾ�X!�I�:EE�����lm¿u�ʒ@Ȕ�:t�'R�U�cV�e��'��=`��      `   A  x�}��n�H���Y�nT��V�%�o	��Ҩ\.� �y���;�f�$�&S�tkH�e[�~�>����E�1�A����*@ "e�,$00����׿��h���In����F�:��b�u����'�>U({z��[U��L��%�����U?<��J�-�O�dt����B=���S�IN��~�& ј"���{��Y�K)���91��n�*"X��C�!�~��R�E�<D�ȩ� 
�
K4�B��"�R��bb1�}�e��!t�O�5$����vz޷U�l���iw0�y_��Љ�w�x�yٍF%�ń���r����Iw�ul��$)�$�k�5�<aDW�0$@G��(����arc*���,J���R�<n-��~�=,����)��c�qz���������0��Z��{�BA��[�+��.��|���Cp��BE�0~��f��p���i2�f�{���N0Z�+A����~xh?T����d:��j�8x�yml��m���a7����Ǡ�y�r�f���[cc�+\*�b��9��YH������0������{�ޯq�#��i�p�ق��*I�S��&qaN�C�����Z���Wɔ��cH	�9��Q���w�n��,�ƛ��d�V�9�y�`�R&�;��|�l�"P�	P�����K�H�f	f�׈��f��pu>{�����u�v��E�������-}�t�x�w��t��c |e��B��9����5O�`�d`ꦈj�RQ�A$tݳD���x�Y��t�&�yXjUZ������u]�n!�ƨI��9}�'���,��3vٗ#��WXI���(dH��׻�S�E�bzq��ٕ
��0�[�º�,tv�U$v�Bb��R(I~��A�?���د*B�_���Ir�ظm�R��������.����Q?j$2�gH�k�5���w�ƆK��q�hw���u�n�^Jt�]dw�2-r��>?�G�I��Jg�5v�g��K_x��x_�^�T�{�W��`��יB�a�<�&���ĳ�F�E���#|�"%3��^>��[�'      \   2   x�32021052402011�wIr��+I�(���/�4�3�34������ �|
     