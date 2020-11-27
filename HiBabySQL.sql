CREATE TABLE t_user(
	i_user INT AUTO_INCREMENT,
	user_id VARCHAR(20) unique,
	user_pw VARCHAR(70),
	salt VARCHAR(80),
	nm VARCHAR(8),
	nick VARCHAR(14),
	email VARCHAR(34) unique,
	uNum INT(8),
	myPoint INT(8), -- 보유한 포인트
	myCash INT(8),  -- 환급받은 캐시
	sm VARCHAR(80),
	profile_img VARCHAR(200),
	r_dt DATETIME DEFAULT NOW(),
	m_dt DATETIME DEFAULT NOW(),
	PRIMARY KEY(i_user)
);
SELECT * FROM t_user;



CREATE TABLE t_board(
    i_board int primary KEY AUTO_INCREMENT,
    title varchar(100) not null,
    ctnt varchar(2000) not null,
    hits int default 0,
    i_user int not null,
    r_dt datetime DEFAULT NOW(),
    FOREIGN key(i_user) REFERENCES t_user(i_user)
);
SELECT * FROM t_board;


CREATE TABLE t_myPoint(
	i_point INT UNSIGNED AUTO_INCREMENT,
	i_user INT,
	myPoint INT(8),
	myCash INT(8),
	myPointNow INT(8),
	r_dt DATETIME DEFAULT NOW(),
	PRIMARY KEY(i_point, i_user),
	FOREIGN KEY(i_user) REFERENCES t_user(i_user)
);


