package org.zerock.bambino.dto;

import jakarta.validation.constraints.Future;
import jakarta.validation.constraints.NotEmpty;
import lombok.*;
import org.zerock.bambino.vo.BambinoVO;

import java.time.LocalDate;

   // 모든 변수를 출력하는 toString 생성
// Getter, Setter, toString, RequireArgsConstructor, EqualsAndHashCode를 한 번에 설정
// @Data
@Builder    // 객체를 생성하는 방식 중 하나
@AllArgsConstructor // 모든 변수를 설정하는 생성자
@NoArgsConstructor  // 변수 설정이 없는 기본 생성자
// @RequiredArgsConstructor    // 필수 변수만 설정하는 생성자
@Getter // 모든 변수의 Getter 생성
@Setter // 모든 변수의 Setter 생성
@EqualsAndHashCode  // 기본키를 기준으로 equals, hashCode 메서드 생성

public class BambinoDTO {
    private Long tno;   // 기본키(PK)
    @NotEmpty   // 빈 문자열, null 확인
    private String title;   // 제목
    @NotEmpty   // 빈 문자열, null 확인
    private String content;   // 내용
    @NotEmpty
    private String id;
    private LocalDate postDate;

       // VO를 DTO로 변환하는 생성자
       public BambinoDTO(BambinoVO vo) {
           this.tno = vo.getTno();
           this.title = vo.getTitle();
           this.content = vo.getContent();
           this.id = vo.getId();
           this.postDate = vo.getPostDate();
       }
       // DTO를 VO로 변환하는 메서드
       public BambinoVO convertVO() {
           return BambinoVO.builder()
               .tno(this.tno)
               .title(this.title)
               .content(this.content)
               .id(this.id)
               .postDate(this.postDate)
               .build();
       }
}
