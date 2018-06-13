SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE ACTIVE;




/* Create Tables */

CREATE TABLE ACTIVE
(
	ACTIVE_ID INT NOT NULL UNIQUE AUTO_INCREMENT,
	ACTIVE_TITLE VARCHAR(500) NOT NULL,
	ACTIVE_BEGINTIME VARCHAR(300),
	ACTIVE_FINISHTIME VARCHAR(300),
	ACTIVE_IMG VARCHAR(200),
	ACTIVE_DES VARCHAR(500),
	ACTIVE_PEOPLE VARCHAR(10),
	PRIMARY KEY (ACTIVE_ID)
);

select * from active

INSERT INTO active VALUES ('1','唐嫣佩戴Darry Ring璀璨臻品,拍摄《时尚新娘》大片 (进行中）',' 2015/5/27 0:00:00',' 2015/6/27 0:00:00','images/active_img/1.jpg','唐嫣首登《时尚新娘》六月刊封面，并佩戴一生仅能定制一枚的Darry Ring（DR真爱戒指）璀璨臻品，化为幸福小女人。','1200');
INSERT INTO active VALUES ('2','娄艺潇佩戴Darry Ring登《芭莎珠宝》 (进行中）',' 2015/5/27 0:00:00',' 2015/6/27 0:00:00','images/active_img/2.jpg','在《芭莎珠宝》大片拍摄中，娄艺潇佩戴一生仅能定制一枚的DarryRing浪漫臻品，倾情演绎只因坚守真爱唯一的信念。','3400');
INSERT INTO active VALUES ('3','Darry Ring苏州店即将开业 (进行中）',' 2015/5/27 0:00:00',' 2015/6/27 0:00:00','images/active_img/3.jpg','Darry Ring即将坐落苏州，在江南水乡，以Darry Ring男人一生仅能定制一枚的执着，感受每一份真爱的柔情……','5200');
INSERT INTO active VALUES ('4','《小时代4》陆烧林萧求婚钻戒 (进行中）',' 2015/5/27 0:00:00',' 2015/6/27 0:00:00','images/active_img/4.jpg','小时代4陆烧林萧求婚钻戒，Darry Ring钻戒顶级定制！无论是回到相爱的那一年，还是走到生命灵魂的尽头，陪伴才是一辈子最美的承诺。','7200');
INSERT INTO active VALUES ('5','5.20送女朋友一生仅能送一枚的钻戒 娶她回家！ (已结束）',' 2015/5/27 0:00:00',' 2015/6/27 0:00:00','images/active_img/5.jpg','520我想嫁，你敢娶吗？浪漫五月季，用男士一生仅一枚的Darry Ring（DR真爱戒指）向爱人告白，娶她回家吧！','4121');


delete  from active where active_id=6;