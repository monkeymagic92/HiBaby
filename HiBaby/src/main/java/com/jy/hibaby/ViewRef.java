package com.jy.hibaby;

// 주소관련
public class ViewRef {	
	//  /user = header, footer
	public static final String USER_TEMP = "temp/userTemp"; // user단 body
	
	// /user
	public static final String USER_LOGIN = "user/login"; // 로그인
	public static final String USER_JOIN = "user/join";  // 회원가입 
	public static final String USER_FINDPW = "user/findPw"; // 비밀번호 찾기	
	public static final String USER_CERCODE = "user/cerCode"; //인증번호
	public static final String USER_CHANGEPW = "user/changePw";	// 비밀번호 변경
	public static final String USER_FINDID = "user/findId";	// 아이디 찾기
	public static final String USER_INFO = "user/info";	// 아이디 찾기
	public static final String USER_MYPAGE = "user/myPage"; // 마이페이지
	
	
	// /index - 선택부
	public static final String INDEX_SELECT = "index/select"; // 첫화면 선택부
	
	// /default - 기본상단바
	public static final String DEFAULT_TEMP = "temp/defaultTemp"; // Header
	
	// /board - 게시글 목록
	public static final String BOARD_LIST = "board/list";		// 게시글 전체목록
	public static final String BOARD_DETAIL = "board/detail";	// 게시글 상세페이지
	public static final String BOARD_REG = "board/boardReg";	// 게시글 등록 / 수정
	
	// /study - 공부
	public static final String STUDY_MAIN = "study/main";		// 스터디 메인부분
	public static final String STUDY_MATH = "study/math";		// 수학공부
	public static final String STUDY_ENG = "study/eng";			// 영어공부
	public static final String STUDY_RANK = "study/rank"; 		// study랭크
	
	
	// /pro  - 프로그래밍
	public static final String PRO_MAIN = "pro/main";			// 프로그래밍 메인
	public static final String PRO_NUM = "pro/pro_num";			// 스무고개
	public static final String PEOPLEGAME = "pro/peopleGame";   // 스무고개
	public static final String PRO_LOTTO = "pro/lotto";			// 로또
	public static final String PRO_CHOICE = "pro/choice";		// 초이스
	
}
