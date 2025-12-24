package org.zerock.bambino.vo;

import lombok.*;

import java.time.LocalDate;

@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MembershipVO {
    private String name;
    private String id;
    private String pw;
    private String emailId;
    private String emailAddress;
    private String tel;
    private String gender;
    private String agree;
    private LocalDate regidate;
}
