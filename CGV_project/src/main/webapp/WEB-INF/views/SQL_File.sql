create database CGV_project;
USE cgv_project;

create table member(
	num INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id VARCHAR(20),
    PW VARCHAR(20),
    email VARCHAR(20),
    name VARCHAR(20)
);
ALTER TABLE member MODIFY COLUMN id VARCHAR(20) UNIQUE;

create table board(
	num INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    writer VARCHAR(20),
    email VARCHAR(20),
    subject VARCHAR(20),
    reg_date DATETIME,
    ref INT,
    re_step INT,
    re_level INT,
    readcount INT,
    content VARCHAR(100),
    manager VARCHAR(20)
);

create table movie(
	num INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movieName VARCHAR(20),
    movieImage VARCHAR(20),
    movieDirector VARCHAR(20),
    movieCharacter VARCHAR(100),
    movieAge VARCHAR(20),
    movieTime VARCHAR(20),
    movieOpen VARCHAR(20),
    movieRating float,
    movieScreening VARCHAR(20),  /* 0:상영예정 1:상영중 2:상영종료  */
    movieContent VARCHAR(100),
    movieTicketing VARCHAR(20),
    movieCost VARCHAR(20),
    movieCount Int
);

create table theater(
	num INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    region VARCHAR(20),
    name VARCHAR(20)
);

create table ticketing(
	num INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id VARCHAR(20),
    movieNum INT,
    date VARCHAR(20),
    time VARCHAR(20),
    amount VARCHAR(20),
	theater VARCHAR(20),
    seat INT,
    
    FOREIGN KEY (id)
    REFERENCES member(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

create table manager(
	id VARCHAR(20) PRIMARY KEY,
    pw VARCHAR(20),
    name VARCHAR(20)
);



INSERT INTO manager VALUES("admin","admin","admin");

INSERT INTO theater(region,name) VALUES("파주","야당");
INSERT INTO theater(region,name) VALUES("파주","금촌");
INSERT INTO theater(region,name) VALUES("서울","홍대");
INSERT INTO theater(region,name) VALUES("서울","용산");
INSERT INTO theater(region,name) VALUES("서울","강남");
INSERT INTO theater(region,name) VALUES("대구","대구스타디움");
INSERT INTO theater(region,name) VALUES("대구","죽전");
INSERT INTO theater(region,name) VALUES("부산/울산","서면");
INSERT INTO theater(region,name) VALUES("부산/울산","해운대");
INSERT INTO theater(region,name) VALUES("부산/울산","울산삼산");

INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("극한직업","1.jpg","이병헌","류승룡,이하늬,진선규,이동휘,공명","15세이상 관람가","111분","2019년 1월 23일",9.7,"상영중","낮에는 치킨장사! 밤에는 잠복근무!","30.2%","13,000원");
INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("어벤져스","2.jpg","조스 웨던","로버트 다우니 주니어,크리스 에반스,마크 러팔로,크리스 헴스워스,스칼렛 요한슨,제레미 레너,톰 히들스턴,새뮤얼 L.잭슨","12세이상 관람가","143분","2012년 4월 26일",9.6,"상영중","ASSEMBLE! 최강의 슈퍼히어로들이 모였다!
		지구의 운명을 건 거대한 전쟁이 시작된다!","13.7%");
INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("서울의봄","3.jpg","김성수","황정민,정우성,이성민,박해준,김성균","12세이상 관람가","141분","2023년 11월 22일",9.5,"상영중","1979년 12월 12일, 수도 서울 군사반란 발생
그날, 대한민국의 운명이 바뀌었다.","13.3%","13,000원");
INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("짱구는 못말려 ~날아라 수제김밥~","4.jpg","오오네 히토시","코바야시 유미코,나라하시 미키,모리카와 토시유키,코오로기 사토미,마시바 마리","전체관람가","93분","2023년 12월 22일",9.4,"상영중","최강의 스케일
	옷까지 갈아입은 볼록 짱구 등장!","7.5%","13,000원");
INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("범죄도시","5.jpg","강윤성","마동석,윤계상",18,"121분","2017년 10월 3일",9.8,"상영중","통쾌하고! 화끈하고! 살벌하게!
나쁜 놈들 때려잡는 강력반 형사들의 ‘조폭 소탕 작전’이 시작된다!","6.8%","13,000원");
INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("인셉션","12.jpg","크리스토퍼 놀란","레오나르도 디카프리오,조셉 고든 레빗,마리옹 꼬띠아르,톰 하디","12세이상관람가","147분","2010년 7월 21일",9.3,"재개봉","꿈 VS 현실
시간, 규칙, 타이밍 모든 것이 완벽해야만 하는,
단 한 번도 성공한 적 없는 ‘인셉션’ 작전이 시작된다!","6.9%","13,000원");
INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("명량","6.jpg","김한민","최민식,류승룡,조진웅","15세 관람가","128분","2014년 7월 30일",9.8,"상영종료","12척의 조선 vs 330척의 왜군
역사를 바꾼 위대한 전쟁이 시작된다!","0.0%","13,000원");

INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("3일의 휴가","7.jpg","육상효","김해숙,신민아,강기영,황보라","12세이상 관람가","105분","2023년 12월 6일",8.3,"상영예정","따님은 어머님을 보거나 목소리를 들을 수 없고요.
그냥 따님의 행복한 기억만 담고 오시면 됩니다.","7.5%","13,000원");
INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("아쿠아맨과 로스트 킹덤","8.jpg","제임스 완","제이슨 모모아,패트릭 윌슨,앰버 허드","15세이상 관람가","124분","2023년 12월 20일",8.8,"상영예정","바다를 지배할 슈퍼 히어로가 세상의 판도를 바꾼다!","0.0%","13,000원");
INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("나폴레옹","9.jpg","리들리 스콧","호아킨 피닉스,바네사 커비,타하르 라힘","15세이상 관람가","158분","2023년 12월 6일",7.5,"상영예정","세상을 정복한 영웅 아무것도 갖지 못한 황제,
‘나폴레옹’의 대서사가 펼쳐진다!","11%","13,000원");
INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("뽀로로 슈퍼스타 대모험","10.jpg","윤제완,김성민","이선,이미자,함수정,홍소영,정미숙,김환진,김서영","전체관람가","78분","2024년 01월 2일",9.0,"상영예정","뽀로로와 친구들은 전 우주를 통틀어 최고의 슈퍼스타를 뽑는 음악 축제
‘파랑돌 슈퍼스타 선발대회’ 축제에 참가하기 위해 모험을 떠난다.","1.1%","13,000원");
INSERT INTO movie(movieName,movieImage,movieDirector,movieCharacter,movieAge,movieTime,movieOpen,movieRating,movieScreening,movieContent,movieTicketing,movieCost) 
	VALUES("클레오의 세계","11.jpg","마리 아마초우켈리-바르사크","루이스 모루아-팡자니,일사 모레노 제고","전체관람가","84분","2024년 01월 3일",7.1,"상영예정","신기해요, 난 글로리아랑 함께한 추억밖에 없는데","0.0%","13,000원");

