
--------------------------------------------------------
--  DDL for Table NAEIL_CART
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NAEIL_CART" 
   (	"CART_ID" NUMBER(10,0), 
	"GOODS_ID" NUMBER(20,0), 
	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"CART_GOODS_QTY" NUMBER(4,0) DEFAULT 1, 
	"DEL_YN" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NAEIL_DETAIL_IMAGE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NAEIL_DETAIL_IMAGE" 
   (	"IMAGE_ID" NUMBER(20,0), 
	"GOODS_ID" NUMBER(20,0), 
	"FILENAME" VARCHAR2(50 BYTE), 
	"FILETYPE" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NAEIL_GOODS
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NAEIL_GOODS" 
   (	"GOODS_ID" NUMBER(20,0), 
	"GOODS_SORT" VARCHAR2(50 BYTE), 
	"GOODS_NAME" VARCHAR2(50 BYTE), 
	"GOODS_PRICE" NUMBER(10,0), 
	"GOODS_STATUS" VARCHAR2(50 BYTE), 
	"GOODS_COMMENT" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NAEIL_MEMBER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NAEIL_MEMBER" 
   (	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"MEMBER_PW" VARCHAR2(30 BYTE), 
	"MEMBER_NAME" VARCHAR2(50 BYTE), 
	"HP" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"ZIPCODE" VARCHAR2(20 BYTE), 
	"ROADADDRESS" VARCHAR2(500 BYTE), 
	"JIBUNADDRESS" VARCHAR2(500 BYTE), 
	"NAMUJIADDRESS" VARCHAR2(500 BYTE), 
	"MEMBER_BIRTH_Y" VARCHAR2(20 BYTE), 
	"MEMBER_BIRTH_M" VARCHAR2(20 BYTE), 
	"MEMBER_BIRTH_D" VARCHAR2(20 BYTE), 
	"DEL_YN" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NAEIL_NOTICE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NAEIL_NOTICE" 
   (	"NOTICE_ID" NUMBER(20,0), 
	"TITLE" VARCHAR2(500 BYTE), 
	"CONTENT" VARCHAR2(3000 BYTE), 
	"WRITE_DATE" DATE DEFAULT SYSDATE, 
	"MEMBER_ID" VARCHAR2(10 BYTE), 
	"CNT" NUMBER(10,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NAEIL_QNA
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NAEIL_QNA" 
   (	"QNA_ID" NUMBER(20,0), 
	"PARENTNO" NUMBER(20,0) DEFAULT 0, 
	"MEMBER_ID" VARCHAR2(10 BYTE), 
	"GOODS_ID" NUMBER(20,0), 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(500 BYTE), 
	"FILENAME" VARCHAR2(100 BYTE), 
	"WRITE_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NAEIL_QNA_IMAGE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NAEIL_QNA_IMAGE" 
   (	"IMAGE_ID" NUMBER(20,0), 
	"QNA_ID" NUMBER(20,0), 
	"FILENAME" VARCHAR2(50 BYTE), 
	"REG_ID" VARCHAR2(20 BYTE), 
	"CREDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NAEIL_REVIEW
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NAEIL_REVIEW" 
   (	"REVIEW_ID" NUMBER(20,0), 
	"MEMBER_ID" VARCHAR2(10 BYTE), 
	"GOODS_ID" NUMBER(20,0), 
	"CONTENT" VARCHAR2(500 BYTE), 
	"STAR" NUMBER, 
	"WRITE_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SCOTT.NAEIL_CART
SET DEFINE OFF;
Insert into SCOTT.NAEIL_CART (CART_ID,GOODS_ID,MEMBER_ID,CART_GOODS_QTY,DEL_YN) values (1,395,'wwdw',7,null);
REM INSERTING into SCOTT.NAEIL_DETAIL_IMAGE
SET DEFINE OFF;
Insert into SCOTT.NAEIL_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,FILETYPE) values (349,395,'image2.jpg','main_image');
Insert into SCOTT.NAEIL_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,FILETYPE) values (350,394,'main1.jpg','main_image');
REM INSERTING into SCOTT.NAEIL_GOODS
SET DEFINE OFF;
Insert into SCOTT.NAEIL_GOODS (GOODS_ID,GOODS_SORT,GOODS_NAME,GOODS_PRICE,GOODS_STATUS,GOODS_COMMENT) values (395,'우유','흰우유',1300,'bestseller','새하얀 흰우유');
Insert into SCOTT.NAEIL_GOODS (GOODS_ID,GOODS_SORT,GOODS_NAME,GOODS_PRICE,GOODS_STATUS,GOODS_COMMENT) values (394,'우유','딸기우유',1400,'bestseller','새빨간 딸기우유');
REM INSERTING into SCOTT.NAEIL_MEMBER
SET DEFINE OFF;
Insert into SCOTT.NAEIL_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,HP,EMAIL,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,DEL_YN) values ('wwdw','1234','박길동','01027861693','jenoyzen@naver.com','500130030','신동아','동구 용전동','나머지주소','2000','5','10',null);
Insert into SCOTT.NAEIL_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,HP,EMAIL,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,DEL_YN) values ('asdqw','12344','진영택','01027861693','asda@gmail.com','500130030','신동아','동구 용전동','나머지주','2000','5','10',null);
Insert into SCOTT.NAEIL_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,HP,EMAIL,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,DEL_YN) values ('jim98','1234','박갈동','01027861693','chu@naver.com','500130030','도로명주소','동구 용전동','나머지주소','2000','5','10',null);
REM INSERTING into SCOTT.NAEIL_NOTICE
SET DEFINE OFF;
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (1,'[이벤트][당첨자 공지] 2.20 식물성 음료 라이브 이벤트 당첨자 발표','안녕하세요, 내일우유입니다. 2월20배 혜택을 넣은 식물성음료 라이브방송 이벤트 경품 당첨자 발표합니다.',to_date('23/03/07','RR/MM/DD'),'admin',3);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (2,'[이벤트]?[01.16 ~ 02.12] 어메이징 경품 이벤트 시즌2','안녕하세요, 내일우유 입니다. 성황리에 마친 선물 이벤트 시즌1!! 다시 돌아온, 어메이징 오트 선물 이벤트 시즌2 박수! 박수! 박수! 고객님들의 많은 관심과 사랑으로 내일우유는 2023년도 한해 더욱 더 힘입어 성장하도록 하겠습니다!!',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (3,'코로나 관련 지연 대상 상품 목록','관련상품들 업체쪽에 연락해서 정상화되는 즉시 출고요청이 완료되었으며 안전문제로 통제되는 상황이라 강제로 해결이 어려운 점 양해부탁드립니다. 또한 관련상품 주문자분들께 전부 지연안내메일을 드렸으나 가입시 메일수신거부 설정으로 일부 주문자분들께 메일발송이 거부되어있습니다.',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (4,'환불관련 규정 및 주소지 변경에 대한 상담 관련 공지','환불문의는 하단 전자 상거래법을 준수하며 상품 준비중 품절/수령일로부터 7일이내 상품에 초기하자 발견시에도 환불이 가능하오니 꼭 문의 남겨주시면 감사하겠습니다. 입고 전 위 사유로 정상 발송이 불가능한 경우 이메일로 즉시 사유 설명과 환불 및 타 상품으로 변경하실 수 있도록 개별연락드리고 있습니다.',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (5,'지연관련안내','현재 상품 입고 지연시 해당상품 주문자분들께 전체메일로 지연안내를 드리고있습니다. 이 과정에서 광고성 메일 수신거부를 하신 분들은 메일이 정상적으로 발송되지 않으며, 해당 설정은 시스템으로 변경이 어렵기 때문에 직접 설정해주셔아 합니다. 수신거부로 인해 지연메일을 받지 못하신 경우 따로 피드백을 드리지 않으니 개별적으로 변경부탁드리겠습니다.',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (6,'(주말,공휴일제외)답변이 2영업일 이내 달려있지않은경우 DM으로 연락부탁드립니다','답변이 2영업일 이내 달려있지않은경우 DM으로 연락부탁드립니다(주말,공휴일제외) 답변이 2영업일 이내 달려있지않은경우 DM으로 연락부탁드립니다(주말,공휴일제외) 누락된것이니 꼭 트위터DM으로 문의남겨주시면 조속히 해결해드릴 수 있도록 하겠습니다.',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (7,'전화/문자상담 답변드리지않습니다.','대부분의 상담이 주문내역을 필수로 조회해 볼 필요가 있어 유선전화로 연락주시는경우 시간이 추가로 소요됩니다. 빠른 상담을 위해 전화및 문자주셔도 상담을 진행해드리지 않습니다. 문의는 트위터 또는 1:1게시판으로 주문번호 포함해서 연락주시면 빠르게 진행해드릴 수 있도록 하겠습니다.',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (8,'배송 관련 공지','최근들어 수입상품 통관이 다소 지연되는 일이 자주 발생하고있습니다.',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (9,'시스템 점검 안내','내일우유를 이용해 주셔서 감사합니다. 내일우유는 사용자 여루분께 더 나은 서비스를 제공하고자 시스템 점검을 실시할 예정입니다. 점검 시간 동안에는 내일우유의 일부 기능을 일시적으로 이용할 수 없습니다. 자세한 일정은 아래를 참고해주세요',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (10,'장애 공지(복구완료)','내일우유 웹스토어에 로그인 할수 없는 장애가 발생했습니다. 현재는 복구되어 정상적으로 로그인 가능합니다 .이용해 불편을 드린 점 대단히 죄송합니다.',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (11,'내일우유 일본 오픈 안내','일본의 PC, 스마트폰 브라우저에서 내일우유의 다양한 제품을 구입할 수 있는 내일우유 일본 웹 사이트가 오픈했습니다!!',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (12,'내일우유 딸기우유 누적 판매량 1500만개 돌파!!!','내일우유 딸기우유 누적 판매량 1500만개 돌파 내일우유가 지난해 선보인 딸기우유가 출시 일주일만에 누적 판매량 1500만개를 돌파했다.',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (13,'[이벤트] 내일우유 딸기우유 누적 판매량 1500만개 돌파 기념 이벤트!!','딸기우유 제품의 누적 판매량 1500만개 돌파 기념 이벤트를 시작합니다 이벤트 기간동안 딸기우유 제품 구매시 1500개 한정 1+1 이벤트를 시작합니다 기간은 일주일!!',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (14,'내일우유 글로벌 시장 진출 전문가 과정 모집공고','내일우유가 글로벌 시장에 진출해 성장을 도모하고 있습니다 같이 할 전문가 과정에 참여하실 여러분을 모집합니다',to_date('23/03/07','RR/MM/DD'),'admin',0);
Insert into SCOTT.NAEIL_NOTICE (NOTICE_ID,TITLE,CONTENT,WRITE_DATE,MEMBER_ID,CNT) values (15,'내일우유 홈페이지 리뉴얼 및 임시비밀번호 변경 안내','내일우유 홈페이지가 리뉴얼 합니다 임시 비밀번호를 변경할 예정이니 이 점 참고하시길 바랍니다.',to_date('23/03/07','RR/MM/DD'),'admin',1);
REM INSERTING into SCOTT.NAEIL_QNA
SET DEFINE OFF;
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (6,0,'park',1,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (1,0,'shin',1,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (7,0,'park',1,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (8,0,'cha',1,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (9,0,'jin',1,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (10,0,'jang',1,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (11,0,'mha',1,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (12,0,'jegal',1,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (13,0,'son',1,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (14,0,'lee',1,'타조는 왜 날지 못하는건지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (15,0,'gil',1,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (16,0,'park',2,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (17,0,'cha',2,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (18,0,'jin',2,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (19,0,'jang',2,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (20,0,'mha',2,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (21,0,'jegal',2,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (22,0,'son',2,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (23,0,'lee',2,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (24,0,'gil',2,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (25,0,'gal',3,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (26,0,'sha',3,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (27,0,'park1',3,'상품안에 배추가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (28,0,'park',3,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (29,0,'cha',3,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (30,0,'jin',3,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (31,0,'jang',3,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (32,0,'mha',3,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (33,0,'jegal',3,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (34,0,'son',3,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (35,0,'lee',3,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (36,0,'gil',3,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (37,0,'gal',3,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (38,0,'sha',3,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (39,0,'park1',3,'상품안에 배추가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (40,0,'park',4,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (41,0,'cha',4,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (42,0,'jin',4,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (43,0,'jang',4,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (44,0,'mha',4,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (45,0,'jegal',4,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (46,0,'son',4,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (47,0,'lee',4,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (48,0,'gil',4,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (49,0,'gal',4,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (50,0,'sha',4,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (51,0,'park1',4,'상품안에 배추가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (52,0,'park',5,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (53,0,'cha',5,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (54,0,'jin',5,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (55,0,'jang',5,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (56,0,'mha',5,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (57,0,'jegal',5,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (58,0,'son',5,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (59,0,'lee',5,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (60,0,'gil',5,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (61,0,'gal',5,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (62,0,'sha',5,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (63,0,'park1',5,'상품안에 배추가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (64,0,'park',6,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (65,0,'cha',6,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (66,0,'jin',6,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (67,0,'jang',6,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (68,0,'mha',6,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (69,0,'jegal',6,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (70,0,'son',6,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (71,0,'lee',6,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (72,0,'gil',6,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (73,0,'gal',6,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (74,0,'sha',6,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (75,0,'park1',6,'상품안에 배추가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (76,0,'park',7,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (77,0,'cha',7,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (78,0,'jin',7,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (79,0,'jang',7,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (80,0,'mha',7,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (81,0,'jegal',7,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (82,0,'son',7,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (83,0,'lee',7,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (84,0,'gil',7,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (85,0,'gal',7,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (86,0,'sha',7,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (87,0,'park1',7,'상품안에 배추가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (88,0,'park',8,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (89,0,'cha',8,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (90,0,'jin',8,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (91,0,'jang',8,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (92,0,'mha',8,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (93,0,'jegal',8,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (94,0,'son',8,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (95,0,'lee',8,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (96,0,'gil',8,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (97,0,'gal',8,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (98,0,'sha',8,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (99,0,'park1',8,'상품안에 배추가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (100,0,'park',12,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (101,0,'cha',12,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (102,0,'jin',12,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (103,0,'jang',12,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (104,0,'mha',12,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (105,0,'jegal',12,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (106,0,'son',12,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (107,0,'lee',12,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (108,0,'gil',12,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (109,0,'gal',12,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (110,0,'sha',12,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (111,0,'park1',12,'상품안에 배추가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (112,0,'park',13,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (113,0,'cha',13,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (114,0,'jin',13,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (115,0,'jang',13,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (116,0,'mha',13,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (117,0,'jegal',13,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (118,0,'son',13,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (119,0,'lee',13,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (120,0,'gil',13,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (121,0,'gal',13,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (122,0,'sha',13,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (123,0,'park1',13,'상품안에 배추가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (124,0,'park',14,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (125,0,'cha',14,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (126,0,'jin',14,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (127,0,'jang',14,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (128,0,'mha',14,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (129,0,'jegal',14,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (130,0,'son',14,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (131,0,'lee',14,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (132,0,'gil',14,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (133,0,'gal',14,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (134,0,'sha',14,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (135,0,'park1',14,'상품안에 배추가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (136,0,'park',15,'상품상태가 엉망','우유 흘렸어요.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (137,0,'cha',15,'상품배달문의','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (138,0,'jin',15,'왜 이렇게 늦을까요??','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (139,0,'jang',15,'택배사 연락부재','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (140,0,'mha',15,'다 좋은데 왜 유통기한이 얼마 안남은 제품을','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (141,0,'jegal',15,'친구를 찾습니다.','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (142,0,'son',15,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (143,0,'lee',15,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (144,0,'gil',15,'상품안에 시츄가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (145,0,'gal',15,'혹시 다른 판매사와 계약을 맺을 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (146,0,'sha',15,'새제품을 출시할 생각이 있는지','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_QNA (QNA_ID,PARENTNO,MEMBER_ID,GOODS_ID,TITLE,CONTENT,FILENAME,WRITE_DATE) values (147,0,'park1',15,'상품안에 배추가 들어 있어요','상품이 늦어서져서 글남깁니다.',null,to_date('23/03/06','RR/MM/DD'));
REM INSERTING into SCOTT.NAEIL_QNA_IMAGE
SET DEFINE OFF;
REM INSERTING into SCOTT.NAEIL_REVIEW
SET DEFINE OFF;
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (1,'son',1,'상한 우유를 보냈습니다. 신고할게요.',5,to_date('23/03/03','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (2,'shin',2,'신선하니 정말 좋습니다.',5,to_date('23/03/03','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (3,'park',3,'매우 맛있네요',5,to_date('23/03/03','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (14,'cha2',1,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (4,'cha',1,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (5,'jin',1,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (6,'jang',1,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (7,'mha',1,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (8,'jegal',1,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (9,'lee',1,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (10,'gil',1,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (11,'gal',1,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (12,'sha',1,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (13,'park1',1,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (15,'gal',1,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (16,'sha',1,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (17,'son',2,'상한 우유를 보냈습니다. 신고할게요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (18,'shin',2,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (19,'park',2,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (20,'cha',2,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (21,'jin',2,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (22,'jang',2,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (23,'mha',2,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (24,'jegal',2,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (25,'lee',2,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (26,'gil',2,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (27,'gal',2,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (28,'sha',2,'매우 맛있네요ㅋ',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (29,'park1',2,'매우 맛있네요',4,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (30,'cha2',2,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (31,'gal',2,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (32,'sha',2,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (33,'son',2,'상한 우유를 보냈습니다. 신고할게요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (34,'shin',2,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (35,'park',2,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (36,'cha',2,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (37,'jin',2,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (38,'jang',2,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (39,'mha',2,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (40,'jegal',2,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (41,'lee',2,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (42,'gil',2,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (43,'gal',2,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (44,'sha',2,'매우 맛있네요ㅋ',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (45,'park1',2,'매우 맛있네요',4,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (46,'cha2',2,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (47,'gal',2,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (48,'sha',2,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (49,'son',4,'여기 우유들은 보통 맛이 없는듯함.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (50,'shin',4,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (51,'park',4,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (52,'cha',4,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (53,'jin',4,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (54,'jang',4,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (55,'mha',4,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (56,'jegal',4,'신선한거 언제 보냄?',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (57,'lee',4,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (58,'gil',4,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (59,'gal',4,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (60,'sha',4,'매우 맛있네요ㅋ',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (61,'park1',4,'매우 맛있네요',4,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (62,'cha2',4,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (63,'gal',4,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (64,'sha',4,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (66,'shin',5,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (67,'park',5,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (68,'cha',5,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (69,'jin',5,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (70,'jang',5,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (71,'mha',5,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (72,'jegal',5,'신선한거 언제 보냄?',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (73,'lee',5,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (74,'gil',5,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (75,'gal',5,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (76,'sha',5,'매우 맛있네요ㅋ',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (77,'park1',5,'매우 맛있네요',4,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (78,'cha2',5,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (79,'gal',5,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (80,'sha',5,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (81,'son',6,'여기 우유들은 보통 맛이 없는듯함.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (82,'shin',6,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (83,'park',6,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (84,'cha',6,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (85,'jin',6,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (86,'jang',6,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (87,'mha',6,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (88,'jegal',6,'신선한거 언제 보냄?',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (89,'lee',6,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (90,'gil',6,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (91,'gal',6,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (92,'sha',6,'매우 맛있네요ㅋ',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (93,'park1',6,'매우 맛있네요',4,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (94,'cha2',6,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (95,'gal',6,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (96,'sha',6,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (97,'son',7,'여기 우유들은 보통 맛이 없는듯함.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (98,'shin',7,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (99,'park',7,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (100,'cha',7,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (101,'jin',7,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (102,'jang',7,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (103,'mha',7,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (104,'jegal',7,'신선한거 언제 보냄?',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (105,'lee',7,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (106,'gil',7,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (107,'gal',7,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (108,'sha',7,'매우 맛있네요ㅋ',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (109,'park1',7,'매우 맛있네요',4,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (110,'cha2',7,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (111,'gal',7,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (112,'sha',7,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (113,'son',8,'여기 우유들은 보통 맛이 없는듯함.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (114,'shin',8,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (115,'park',8,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (116,'cha',8,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (117,'jin',8,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (118,'jang',8,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (119,'mha',8,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (120,'jegal',8,'신선한거 언제 보냄?',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (121,'lee',8,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (122,'gil',8,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (123,'gal',8,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (124,'sha',8,'매우 맛있네요ㅋ',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (125,'park1',8,'매우 맛있네요',4,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (126,'cha2',8,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (127,'gal',8,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (128,'sha',8,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (129,'son',9,'여기 우유들은 보통 맛이 없는듯함.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (130,'shin',9,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (131,'park',9,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (132,'cha',9,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (133,'jin',9,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (134,'jang',9,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (135,'mha',9,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (136,'jegal',9,'신선한거 언제 보냄?',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (137,'lee',9,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (138,'gil',9,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (139,'gal',9,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (140,'sha',9,'매우 맛있네요ㅋ',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (141,'park1',9,'매우 맛있네요',4,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (142,'cha2',9,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (143,'gal',9,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (144,'sha',9,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (145,'son',12,'여기 우유들은 보통 맛이 없는듯함.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (146,'shin',12,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (147,'park',12,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (148,'cha',12,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (149,'jin',12,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (150,'jang',12,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (151,'mha',12,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (152,'jegal',12,'신선한거 언제 보냄?',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (153,'lee',12,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (154,'gil',12,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (155,'gal',12,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (156,'sha',12,'매우 맛있네요ㅋ',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (157,'park1',12,'매우 맛있네요',4,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (158,'cha2',12,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (159,'gal',12,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (169,'sha',12,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (161,'shin',13,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (162,'park',13,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (163,'cha',13,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (164,'jin',13,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (165,'jang',13,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (166,'mha',13,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (167,'jegal',13,'신선한거 언제 보냄?',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (168,'lee',13,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (170,'gil',13,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (171,'gal',13,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (172,'sha',13,'매우 맛있네요ㅋ',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (173,'park1',13,'매우 맛있네요',4,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (174,'cha2',13,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (175,'gal',13,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (176,'sha',13,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (177,'son',14,'여기 우유들은 보통 맛이 없는듯함.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (178,'shin',14,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (179,'park',14,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (180,'cha',14,'제 취향은 아닌 것 같아요.',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (181,'jin',14,'신선하니 정말 좋습니다.',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (182,'jang',14,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (183,'mha',14,'우유 아님 ㅋㅋ.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (184,'jegal',14,'신선한거 언제 보냄?',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (185,'lee',14,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (186,'gil',14,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (187,'gal',14,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (188,'sha',14,'매우 맛있네요ㅋ',3,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (189,'park1',14,'매우 맛있네요',4,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (190,'cha2',14,'우리 아이가 싫어해요.',1,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (191,'gal',14,'희안한 맛.',2,to_date('23/03/06','RR/MM/DD'));
Insert into SCOTT.NAEIL_REVIEW (REVIEW_ID,MEMBER_ID,GOODS_ID,CONTENT,STAR,WRITE_DATE) values (192,'sha',14,'매우 맛있네요',5,to_date('23/03/06','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index SYS_C007262
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007262" ON "SCOTT"."NAEIL_CART" ("CART_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007250
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007250" ON "SCOTT"."NAEIL_DETAIL_IMAGE" ("IMAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007249
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007249" ON "SCOTT"."NAEIL_GOODS" ("GOODS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007234
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007234" ON "SCOTT"."NAEIL_MEMBER" ("MEMBER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007372
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007372" ON "SCOTT"."NAEIL_NOTICE" ("NOTICE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007354
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007354" ON "SCOTT"."NAEIL_QNA" ("QNA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007357
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007357" ON "SCOTT"."NAEIL_QNA_IMAGE" ("IMAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007330
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007330" ON "SCOTT"."NAEIL_REVIEW" ("REVIEW_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table NAEIL_CART
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_CART" ADD PRIMARY KEY ("CART_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NAEIL_DETAIL_IMAGE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_DETAIL_IMAGE" ADD PRIMARY KEY ("IMAGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NAEIL_GOODS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_GOODS" ADD PRIMARY KEY ("GOODS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NAEIL_MEMBER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_MEMBER" ADD PRIMARY KEY ("MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NAEIL_NOTICE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_NOTICE" ADD PRIMARY KEY ("NOTICE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."NAEIL_NOTICE" MODIFY ("WRITE_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NAEIL_QNA
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_QNA" ADD PRIMARY KEY ("QNA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."NAEIL_QNA" MODIFY ("WRITE_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NAEIL_QNA_IMAGE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_QNA_IMAGE" ADD PRIMARY KEY ("IMAGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NAEIL_REVIEW
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_REVIEW" ADD PRIMARY KEY ("REVIEW_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."NAEIL_REVIEW" MODIFY ("WRITE_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table NAEIL_CART
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_CART" ADD CONSTRAINT "CART_GOODS_FK" FOREIGN KEY ("GOODS_ID")
	  REFERENCES "SCOTT"."NAEIL_GOODS" ("GOODS_ID") ENABLE;
  ALTER TABLE "SCOTT"."NAEIL_CART" ADD CONSTRAINT "CART_MEMBER_FK" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "SCOTT"."NAEIL_MEMBER" ("MEMBER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NAEIL_DETAIL_IMAGE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_DETAIL_IMAGE" ADD CONSTRAINT "IMAGE_FK" FOREIGN KEY ("GOODS_ID")
	  REFERENCES "SCOTT"."NAEIL_GOODS" ("GOODS_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NAEIL_NOTICE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_NOTICE" ADD CONSTRAINT "NOTICE_FK_ID" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "SCOTT"."T_SHOPPING_MEMBER" ("MEMBER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NAEIL_QNA
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_QNA" ADD CONSTRAINT "QNA_GOODS_ID" FOREIGN KEY ("GOODS_ID")
	  REFERENCES "SCOTT"."T_SHOPPING_GOODS" ("GOODS_ID") ENABLE;
  ALTER TABLE "SCOTT"."NAEIL_QNA" ADD CONSTRAINT "QNA_MEMBER_ID" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "SCOTT"."T_SHOPPING_MEMBER" ("MEMBER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NAEIL_QNA_IMAGE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_QNA_IMAGE" ADD CONSTRAINT "QNA_FK_ID" FOREIGN KEY ("QNA_ID")
	  REFERENCES "SCOTT"."NAEIL_QNA" ("QNA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NAEIL_REVIEW
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NAEIL_REVIEW" ADD CONSTRAINT "RE_GOODS" FOREIGN KEY ("GOODS_ID")
	  REFERENCES "SCOTT"."T_SHOPPING_GOODS" ("GOODS_ID") ENABLE;
  ALTER TABLE "SCOTT"."NAEIL_REVIEW" ADD CONSTRAINT "RE_MEMBER" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "SCOTT"."T_SHOPPING_MEMBER" ("MEMBER_ID") ENABLE;
