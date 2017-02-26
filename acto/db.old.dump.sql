

BEGIN TRANSACTION;
CREATE TABLE "base_city" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(255) NOT NULL, "x" real NOT NULL, "y" real NOT NULL);
CREATE TABLE "base_imageitem" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "image" varchar(100) NOT NULL, "order" integer NOT NULL);
INSERT INTO "base_imageitem" VALUES(1,'for_traums.png',1);
INSERT INTO "base_imageitem" VALUES(2,'for_cuts.png',2);
INSERT INTO "base_imageitem" VALUES(3,'callus.png',3);
INSERT INTO "base_imageitem" VALUES(4,'abrasion.png',3);
INSERT INTO "base_imageitem" VALUES(5,'arrow-left.png',1);
INSERT INTO "base_imageitem" VALUES(6,'1_buugIPu.png',1);
INSERT INTO "base_imageitem" VALUES(7,'2_NPUH1pe.png',2);
INSERT INTO "base_imageitem" VALUES(8,'3_O0OBqpz.png',3);
INSERT INTO "base_imageitem" VALUES(9,'4_6YR9Pq4.png',4);
INSERT INTO "base_imageitem" VALUES(10,'5_CSe4y8S.png',5);
INSERT INTO "base_imageitem" VALUES(11,'6.png',6);
INSERT INTO "base_imageitem" VALUES(12,'7.png',7);
INSERT INTO "base_imageitem" VALUES(13,'frame-1-.png',1);
INSERT INTO "base_imageitem" VALUES(14,'frame-1-_kTEshJ8.png',2);
INSERT INTO "base_imageitem" VALUES(15,'frame-1-_24Ih9I4.png',3);
CREATE TABLE "base_shop" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(255) NOT NULL, "address" varchar(255) NOT NULL, "x" real NOT NULL, "y" real NOT NULL);
CREATE TABLE "base_textimageitem" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "image" varchar(100) NOT NULL, "text" text NOT NULL, "order" integer NOT NULL);
INSERT INTO "base_textimageitem" VALUES(1,'20.png','<ul style="border: none; padding: 0px; margin: 33px 0px 0px; font-family: ''San Francisco''; font-size: medium;">
<li style="border: none; padding: 0px; margin: 0px; display: inline-block; width: 272.875px;">
<div style="border: none; padding: 0px 72px 0px 0px; margin: 0px;">
<div class="w196" style="border: none; padding: 10px 0px 0px; margin: 0px; text-align: center; text-transform: lowercase; font-size: 16px; color: #2c4f8a; width: 196px;">lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
</div>
</li>
<li style="border: none; padding: 0px; margin: 0px; display: inline-block; width: 272.875px;">
<p>&nbsp;</p>
</li>
</ul>',1);
INSERT INTO "base_textimageitem" VALUES(2,'24.png','<ul style="border: none; padding: 0px; margin: 33px 0px 0px;">
<li style="border: none; padding: 0px; margin: 0px; display: inline-block; width: 272.875px;">
<p><span style="font-family: ''San Francisco''; font-size: medium;">lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></p>
</li>
</ul>',2);
INSERT INTO "base_textimageitem" VALUES(3,'200.png','<p>lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',3);
INSERT INTO "base_textimageitem" VALUES(4,'150.png','<p>lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',4);
INSERT INTO "base_textimageitem" VALUES(5,'dot1.png','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam egestas mi id iaculis interdum. Nam lacinia dui massa, quis viverra ante dictum ac. Ut commodo justo eget mi gravida, eu malesuada nisi blandit. Pellentesque facilisis et leo id finibus. Pellentesque consequat turpis non faucibus scelerisque. Curabitur mattis sem nec nisl fringilla, tristique tempus urna aliquam. Morbi molestie, massa sit amet efficitur auctor, mi ex ornare felis, non luctus nibh est et risus. Nunc quis vehicula eros. Ut nec rutrum tellus, sit amet ultricies lorem. Curabitur vitae libero sit amet dui mollis fermentum nec vel ipsum. Praesent fringilla ultrices tortor, non tempus elit placerat sed.</p>',1);
INSERT INTO "base_textimageitem" VALUES(6,'dot2.png','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam egestas mi id iaculis interdum. Nam lacinia dui massa, quis viverra ante dictum ac. Ut commodo justo eget mi gravida, eu malesuada nisi blandit. Pellentesque facilisis et leo id finibus. Pellentesque consequat turpis non faucibus scelerisque. Curabitur mattis sem nec nisl fringilla, tristique tempus urna aliquam. Morbi molestie, massa sit amet efficitur auctor, mi ex ornare felis, non luctus nibh est et risus. Nunc quis vehicula eros. Ut nec rutrum tellus, sit amet ultricies lorem. Curabitur vitae libero sit amet dui mollis fermentum nec vel ipsum. Praesent fringilla ultrices tortor, non tempus elit placerat sed.</p>',2);
INSERT INTO "base_textimageitem" VALUES(7,'dot3.png','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam egestas mi id iaculis interdum. Nam lacinia dui massa, quis viverra ante dictum ac. Ut commodo justo eget mi gravida, eu malesuada nisi blandit. Pellentesque facilisis et leo id finibus. Pellentesque consequat turpis non faucibus scelerisque. Curabitur mattis sem nec nisl fringilla, tristique tempus urna aliquam. Morbi molestie, massa sit amet efficitur auctor, mi ex ornare felis, non luctus nibh est et risus. Nunc quis vehicula eros. Ut nec rutrum tellus, sit amet ultricies lorem. Curabitur vitae libero sit amet dui mollis fermentum nec vel ipsum. Praesent fringilla ultrices tortor, non tempus elit placerat sed.</p>',3);
INSERT INTO "base_textimageitem" VALUES(8,'1.png','<p>Lorem ipsum dolor sit amet.</p>',1);
INSERT INTO "base_textimageitem" VALUES(9,'2.png','<p>Lorem ipsum dolor sit amet.</p>',2);
INSERT INTO "base_textimageitem" VALUES(10,'3.png','<p>Lorem ipsum dolor sit amet.</p>',3);
INSERT INTO "base_textimageitem" VALUES(11,'4.png','<p>Lorem ipsum dolor sit amet.</p>',4);
INSERT INTO "base_textimageitem" VALUES(12,'5.png','<p>Lorem ipsum dolor sit amet.</p>',5);
CREATE TABLE "base_textitem" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "order" integer NOT NULL, "caption" text NOT NULL, "text" text NOT NULL);
INSERT INTO "base_textitem" VALUES(1,1,'<p>test</p>','<p>test</p>');
CREATE TABLE "base_docspage_items" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "docspage_id" integer NOT NULL REFERENCES "base_docspage" ("basesingletonpage_ptr_id"), "imageitem_id" integer NOT NULL REFERENCES "base_imageitem" ("id"));
INSERT INTO "base_docspage_items" VALUES(1,1,13);
INSERT INTO "base_docspage_items" VALUES(2,1,14);
INSERT INTO "base_docspage_items" VALUES(3,1,15);
CREATE TABLE "base_factspage_items" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "factspage_id" integer NOT NULL REFERENCES "base_factspage" ("basesingletonpage_ptr_id"), "textimageitem_id" integer NOT NULL REFERENCES "base_textimageitem" ("id"));
INSERT INTO "base_factspage_items" VALUES(1,1,1);
INSERT INTO "base_factspage_items" VALUES(2,1,2);
INSERT INTO "base_factspage_items" VALUES(3,1,3);
INSERT INTO "base_factspage_items" VALUES(4,1,4);
CREATE TABLE "base_faqpage_items" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "faqpage_id" integer NOT NULL REFERENCES "base_faqpage" ("basesingletonpage_ptr_id"), "textitem_id" integer NOT NULL REFERENCES "base_textitem" ("id"));
INSERT INTO "base_faqpage_items" VALUES(1,1,1);
CREATE TABLE "base_forpage_items" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "forpage_id" integer NOT NULL REFERENCES "base_forpage" ("basesingletonpage_ptr_id"), "imageitem_id" integer NOT NULL REFERENCES "base_imageitem" ("id"));
INSERT INTO "base_forpage_items" VALUES(1,1,1);
INSERT INTO "base_forpage_items" VALUES(2,1,2);
INSERT INTO "base_forpage_items" VALUES(3,1,3);
INSERT INTO "base_forpage_items" VALUES(4,1,4);
CREATE TABLE "base_greenpage_items" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "greenpage_id" integer NOT NULL REFERENCES "base_greenpage" ("basesingletonpage_ptr_id"), "textimageitem_id" integer NOT NULL REFERENCES "base_textimageitem" ("id"));
INSERT INTO "base_greenpage_items" VALUES(1,1,7);
INSERT INTO "base_greenpage_items" VALUES(2,1,5);
INSERT INTO "base_greenpage_items" VALUES(3,1,6);
CREATE TABLE "base_howpage_items" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "howpage_id" integer NOT NULL REFERENCES "base_howpage" ("basesingletonpage_ptr_id"), "textdoubleimageitem_id" integer NOT NULL REFERENCES "base_textdoubleimageitem" ("id"));
INSERT INTO "base_howpage_items" VALUES(1,1,1);
INSERT INTO "base_howpage_items" VALUES(2,1,2);
INSERT INTO "base_howpage_items" VALUES(3,1,3);
INSERT INTO "base_howpage_items" VALUES(4,1,4);
INSERT INTO "base_howpage_items" VALUES(5,1,5);
CREATE TABLE "base_whypage_items" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "whypage_id" integer NOT NULL REFERENCES "base_whypage" ("basesingletonpage_ptr_id"), "textimageitem_id" integer NOT NULL REFERENCES "base_textimageitem" ("id"));
INSERT INTO "base_whypage_items" VALUES(1,1,8);
INSERT INTO "base_whypage_items" VALUES(2,1,9);
INSERT INTO "base_whypage_items" VALUES(3,1,10);
INSERT INTO "base_whypage_items" VALUES(4,1,11);
INSERT INTO "base_whypage_items" VALUES(5,1,12);
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO "django_session" VALUES('09fzna40mf6rmm26d9lqeqtc3ls5rv4z','ZTBiYmFhMTk2ZjIyMzBhOGU5NGNiN2RkNDQ3OTVlMjFjOGFlNmE1Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MzQ1YTc5ZjVlOTRkYjQ1MzQ2YWI5Njg4NDdkNmNlZDk2YWM1ZTBjIn0=','2017-02-07 20:56:18.438846');
INSERT INTO "django_session" VALUES('ziynk0lhpqx3g5q7svqjzoczsb06c691','MzcwNWNlOWMzOTZkMzU2Y2JiNWY4MmJiN2ViODY4ODE5MDUwZTBlMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDM0NWE3OWY1ZTk0ZGI0NTM0NmFiOTY4ODQ3ZDZjZWQ5NmFjNWUwYyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-11 09:18:27.102674');
INSERT INTO "django_session" VALUES('z4ic97rqqfkexs64449jre3pben6bb7r','YmJiYzIzYTBjMDBlODlmNTNmNTkzNTk5ZTdlZmQzMjliN2IxMWEzZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzNDVhNzlmNWU5NGRiNDUzNDZhYjk2ODg0N2Q2Y2VkOTZhYzVlMGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-11 13:10:33.762551');
CREATE TABLE "base_textdoubleimageitem" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "image" varchar(100) NOT NULL, "text" text NOT NULL, "order" integer NOT NULL, "subimage" varchar(100) NOT NULL);
INSERT INTO "base_textdoubleimageitem" VALUES(1,'shake.png','<p><strong>ВСТРЯХНИТЕ БАЛОН</strong></p>',1,'1_6YHzrKw.png');
INSERT INTO "base_textdoubleimageitem" VALUES(2,'spray.png','<p><strong>ВСТРЯХНИТЕ БАЛОН</strong></p>
<p>ВСТРЯХНИТЕ БАЛОН</p>',2,'2_x6h5vnC.png');
INSERT INTO "base_textdoubleimageitem" VALUES(3,'time.png','<p>ВСТРЯХНИТЕ БАЛОН</p>',3,'3_YJdAX0t.png');
INSERT INTO "base_textdoubleimageitem" VALUES(4,'3spray.png','<p>ВСТРЯХНИТЕ БАЛОН</p>',4,'4_VRruMRO.png');
INSERT INTO "base_textdoubleimageitem" VALUES(5,'skin.png','<p>ВСТРЯХНИТЕ БАЛОН</p>',5,'5_0RsfEo6.png');
CREATE TABLE "base_orangepage_items" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "orangepage_id" integer NOT NULL REFERENCES "base_orangepage" ("basesingletonpage_ptr_id"), "imageitem_id" integer NOT NULL REFERENCES "base_imageitem" ("id"));
INSERT INTO "base_orangepage_items" VALUES(1,1,6);
INSERT INTO "base_orangepage_items" VALUES(2,1,7);
INSERT INTO "base_orangepage_items" VALUES(3,1,8);
INSERT INTO "base_orangepage_items" VALUES(4,1,9);
INSERT INTO "base_orangepage_items" VALUES(5,1,10);
INSERT INTO "base_orangepage_items" VALUES(6,1,11);
INSERT INTO "base_orangepage_items" VALUES(7,1,12);
CREATE TABLE "base_yellowpage_items" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "yellowpage_id" integer NOT NULL REFERENCES "base_yellowpage" ("basesingletonpage_ptr_id"), "tripletextitem_id" integer NOT NULL REFERENCES "base_tripletextitem" ("id"));
INSERT INTO "base_yellowpage_items" VALUES(1,1,1);
CREATE TABLE "base_templateitem" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(255) NULL, "template" varchar(100) NOT NULL);
CREATE TABLE "base_tripletextitem" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "text" text NOT NULL, "name" varchar(255) NULL, "subtext" varchar(255) NULL);
INSERT INTO "base_tripletextitem" VALUES(1,'<p>Texxt</p>','Jhonny','Noir Yorl');
CREATE TABLE "base_docspage" ("basesingletonpage_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "base_basesingletonpage" ("id"));
CREATE TABLE "base_factspage" ("basesingletonpage_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "base_basesingletonpage" ("id"));
CREATE TABLE "base_faqpage" ("basesingletonpage_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "base_basesingletonpage" ("id"));
CREATE TABLE "base_forpage" ("basesingletonpage_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "base_basesingletonpage" ("id"));
CREATE TABLE "base_greenpage" ("basesingletonpage_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "base_basesingletonpage" ("id"), "caption" text NOT NULL, "free_delivery_button" varchar(100) NOT NULL, "no_delivery_button" varchar(100) NOT NULL);
INSERT INTO "base_greenpage" VALUES(1,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam egestas mi id iaculis interdum. Nam lacinia dui massa, quis viverra ante dictum ac. Ut commodo justo eget mi gravida, eu malesuada nisi blandit. Pellentesque facilisis et leo id finibus. Pellentesque consequat turpis non faucibus scelerisque. Curabitur mattis sem nec nisl fringilla, tristique tempus urna aliquam. Morbi molestie, massa sit amet efficitur auctor, mi ex ornare felis, non luctus nibh est et risus. Nunc quis vehicula eros. Ut nec rutrum tellus, sit amet ultricies lorem. Curabitur vitae libero sit amet dui mollis fermentum nec vel ipsum. Praesent fringilla ultrices tortor, non tempus elit placerat sed.</p>','buy-now_vy6kSgU.png','buy-now_KpgYRuh.png');
CREATE TABLE "base_howpage" ("basesingletonpage_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "base_basesingletonpage" ("id"), "caption" text NOT NULL);
INSERT INTO "base_howpage" VALUES(1,'<p>Lorem ipsum dolor sit amet.&nbsp;Lorem ipsum dolor sit amet.&nbsp;Lorem ipsum dolor sit amet.</p>');
CREATE TABLE "base_mintpage" ("basesingletonpage_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "base_basesingletonpage" ("id"), "left_image" varchar(100) NOT NULL, "right_image" varchar(100) NOT NULL, "caption" text NOT NULL);
INSERT INTO "base_mintpage" VALUES(1,'hands.png','infographic.png','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam egestas mi id iaculis interdum. Nam lacinia dui massa, quis viverra ante dictum ac. Ut commodo justo eget mi gravida, eu malesuada nisi blandit.</p>
<p>&nbsp;</p>');
CREATE TABLE "base_orangepage" ("basesingletonpage_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "base_basesingletonpage" ("id"));
CREATE TABLE "base_toppage" ("basesingletonpage_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "base_basesingletonpage" ("id"), "backgound" varchar(100) NULL, "image" varchar(100) NULL, "text" text NULL, "banner" varchar(100) NULL, "free_delivery_button" varchar(100) NULL, "no_delivery_button" varchar(100) NULL);
INSERT INTO "base_toppage" VALUES(1,'background-top-left.png','akto-box-photo.png','','button.png','banner-free.png','banner-non-free.png');
CREATE TABLE "base_whypage" ("basesingletonpage_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "base_basesingletonpage" ("id"));
CREATE TABLE "base_yellowpage" ("basesingletonpage_ptr_id" integer NOT NULL PRIMARY KEY REFERENCES "base_basesingletonpage" ("id"), "text" text NULL);
INSERT INTO "base_yellowpage" VALUES(1,'<p>test</p>');
CREATE UNIQUE INDEX "base_docspage_items_docspage_id_a01d7f0e_uniq" ON "base_docspage_items" ("docspage_id", "imageitem_id");
CREATE INDEX "base_docspage_items_90925acb" ON "base_docspage_items" ("docspage_id");
CREATE INDEX "base_docspage_items_2fdb5d76" ON "base_docspage_items" ("imageitem_id");
CREATE UNIQUE INDEX "base_factspage_items_factspage_id_19c5add0_uniq" ON "base_factspage_items" ("factspage_id", "textimageitem_id");
CREATE INDEX "base_factspage_items_5ccf6e32" ON "base_factspage_items" ("factspage_id");
CREATE INDEX "base_factspage_items_a26c35b2" ON "base_factspage_items" ("textimageitem_id");
CREATE UNIQUE INDEX "base_faqpage_items_faqpage_id_1631b2f9_uniq" ON "base_faqpage_items" ("faqpage_id", "textitem_id");
CREATE INDEX "base_faqpage_items_a15dec12" ON "base_faqpage_items" ("faqpage_id");
CREATE INDEX "base_faqpage_items_ba61d319" ON "base_faqpage_items" ("textitem_id");
CREATE UNIQUE INDEX "base_forpage_items_forpage_id_1b96b1ff_uniq" ON "base_forpage_items" ("forpage_id", "imageitem_id");
CREATE INDEX "base_forpage_items_45cc9a03" ON "base_forpage_items" ("forpage_id");
CREATE INDEX "base_forpage_items_2fdb5d76" ON "base_forpage_items" ("imageitem_id");
CREATE UNIQUE INDEX "base_greenpage_items_greenpage_id_88c2a0b3_uniq" ON "base_greenpage_items" ("greenpage_id", "textimageitem_id");
CREATE INDEX "base_greenpage_items_a4d44c2c" ON "base_greenpage_items" ("greenpage_id");
CREATE INDEX "base_greenpage_items_a26c35b2" ON "base_greenpage_items" ("textimageitem_id");
CREATE UNIQUE INDEX "base_howpage_items_howpage_id_8930b663_uniq" ON "base_howpage_items" ("howpage_id", "textdoubleimageitem_id");
CREATE INDEX "base_howpage_items_e522b791" ON "base_howpage_items" ("howpage_id");
CREATE INDEX "base_howpage_items_9e48bc44" ON "base_howpage_items" ("textdoubleimageitem_id");
CREATE UNIQUE INDEX "base_whypage_items_whypage_id_a92759cc_uniq" ON "base_whypage_items" ("whypage_id", "textimageitem_id");
CREATE INDEX "base_whypage_items_e5b9a9cd" ON "base_whypage_items" ("whypage_id");
CREATE INDEX "base_whypage_items_a26c35b2" ON "base_whypage_items" ("textimageitem_id");
CREATE INDEX "django_session_de54fa62" ON "django_session" ("expire_date");
CREATE UNIQUE INDEX "base_orangepage_items_orangepage_id_2cecd03e_uniq" ON "base_orangepage_items" ("orangepage_id", "imageitem_id");
CREATE INDEX "base_orangepage_items_9499c2f0" ON "base_orangepage_items" ("orangepage_id");
CREATE INDEX "base_orangepage_items_2fdb5d76" ON "base_orangepage_items" ("imageitem_id");
CREATE UNIQUE INDEX "base_yellowpage_items_yellowpage_id_1ab58d09_uniq" ON "base_yellowpage_items" ("yellowpage_id", "tripletextitem_id");
CREATE INDEX "base_yellowpage_items_359b06d7" ON "base_yellowpage_items" ("yellowpage_id");
CREATE INDEX "base_yellowpage_items_71607bd4" ON "base_yellowpage_items" ("tripletextitem_id");
COMMIT;
