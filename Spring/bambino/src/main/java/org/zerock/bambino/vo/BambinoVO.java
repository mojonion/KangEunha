package org.zerock.bambino.vo;

import lombok.*;

import java.time.LocalDate;

@Getter // 모든 변수의 Getter 생성
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BambinoVO {
    private Long tno;           // 기본키(PK)
    private String title;       // 제목
    private String content;     // 내용
    private String id;   // 작성자
    private LocalDate postDate;  // 작성일
}
