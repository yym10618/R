

# dplyr 패키지 사용
library(dplyr)

# 1. exam.csv 파일 DataFrame 출력
df_exam <- read.csv('../file/exam.csv')
df_exam
View(df_exam)


# 2. math, english, science 변수만 갖는 DataFrame 출력
rs1 <- df_exam %>% select(math, english, science)
rs1
View(rs1)

# 3. class가 1인 모든 변수를 갖는 DataFrame 출력
rs2 <- df_exam %>% select(everything()) %>%  filter(class==1)
rs2
View(rs2)

# 4. english가 60점 이상이고 80점 미만 DataFrame 출력
rs3 <- df_exam %>% filter(english >= 60 & english < 80)
rs3
View(rs3)

# 5. science가 60점 이상이고 80점 미만 DataFrame출력
rs4 <- df_exam %>% filter(science >= 60 & science < 80)
rs4
View(rs4)

# 6. math가 60점이상이고 점수가 높은 순서를 갖는 class, id, math 변수를 갖는 DataFrame 출력
rs5 <- df_exam %>% select(class, id, math) %>% arrange(desc(math)) %>% filter(math >= 60)
rs5
View(rs5)

# 7. class로 그룹화되고 수학점수 평균, 영어점수 평균, 과학점수 평균을 갖는 DataFrame 출력
rs6 <- df_exam %>% group_by(class) %>% summarise(mean(math), mean(english), mean(science))
rs6
View(rs6)

# 8. total(math, english, science의 합) 파생변수를 갖는 DataFrame 출력
df_exam$total <- df_exam$math + df_exam$english + df_exam$science
df_exam
View(df_exam)

# 9. mean(math, english, science의 합의 평균) 파생변수를 갖는 DataFrame 출력
df_exam$mean <- df_exam$total / 3
df_exam
View(df_exam)

# 10. grade(평균의 등급 A, B, C, D, F) 파생변수를 갖는 DataFrame 출력
df_exam$grade <- ifelse(df_exam$mean >= 90, 'A',
                 ifelse(df_exam$mean >= 80, 'B',
                 ifelse(df_exam$mean >= 70, 'C',
                 ifelse(df_exam$mean >= 60, 'D', "F"))))
df_exam
View(df_exam)






