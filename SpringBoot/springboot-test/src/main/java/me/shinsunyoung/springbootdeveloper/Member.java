package me.shinsunyoung.springbootdeveloper;

import jakarta.persistence.*;
import lombok.*;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Getter
@ToString
@Entity // JPA 데이블 작성 어노테이션
public class Member {
    @Id // PRIMARY KEY 설정
    // @GeneratedValue(strategy = GenerationType.IDENTITY) // 생성 타입
    @Column // 열 이름 및 제약 조건 등 설정
    private Long id;
            // name="열이름", nullable="null값 저장 여부"
    @Column(name="name", nullable = false)
    private String name;

    public void changeName(String name) {
        this.name = name;
    }
}
