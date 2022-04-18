#날짜 : 2022/04/18
#이름 : 양용민
#내용 : Ch04.제어문과 함수 - 조건문 교재 p110


##################
#교재예제 실습하기
##################

#교재 p110 실습 - if() 사용하기
x <- 50; y <- 4; z <- x * y
if(x * y >= 40){
  cat("x * y의 결과는 40 이상입니다.\n")
  cat("x * y =", z)
}else{
  cat("x * y의 결과는 40 미만입니다. x * y =", z, "\n")
}

#교재 p110 실습 - if() 사용으로 입력된 점수의 학점 구하기
score <- scan()                     # 점수 입력
score                               # 입력된 점수 확인
result <- "노력"                    # 결과 초기값 지정
if(score >= 80){                    # 결과 변경
  result <- "우수"  
}
cat("당신의 학점은", result, score) # 결과 확인

#교재 p111 실습 - if ~ else if 형식으로 학점 구하기
score <- scan()
if(score>=90){
  result <- "A"
}else if(score>=80){
  result <- "B"
}else if(score>=70){
  result <- "C"
}else if(score>=60){
  result <- "D"
}else{
  result <- "F"
}
cat("당신의 학점은",result) # 문자열과 변수의 값을 함께 출력
print(result)               # print()함수는 변수의 값 또는 수식의 결과만 출력

#교재 p112 실습 - ifelse() 사용하기
score <- scan()
ifelse(score >= 80, "우수", "노력") # "우수" 선택
ifelse(score <= 80, "우수", "노력") # "노력" 선택

#교재 p112 실습 - ifelse() 응용하기
excel <- read.csv("../file/excel.csv", header = T)
q1 <- excel$q1                # q1 변수값 추출
q1                            # q1 변수값 확인

ifelse(q1 >= 3, sqrt(q1), q1) # q1 값이 3보다 큰 경우 sqrt()함수 적용

#교재 p113 실습 - ifelse() 에서 논리연산자 사용하기
ifelse(q1 >= 2 & q1 <= 4, q1 ^ 2, q1) # 1과 5만 출력, 나머지(2~4)는 제곱승 적용

#교재 p113 실습 - switch() 를 사용하여 사원명으로 급여정보 보기
empname <- scan(what = "")
empname

switch(empname,
       hong = 250,
       lee = 350,
       kim = 200,
       kang = 400
)

#교재 p114 실습 - 벡터에서 which() 사용:index 값을 반환
name <- c("kim", "lee", "choi", "park")
which(name == "choi")

#교재 p114 실습 - 데이터프레임에서 which() 사용
no <- c(1:5)
name <- c("홍길동", "이순신", "강감찬", "유관순", "김유신")
score <- c(85, 78, 89, 90, 74)
exam <- data.frame(학번=no, 이름=name, 성적=score)
exam
