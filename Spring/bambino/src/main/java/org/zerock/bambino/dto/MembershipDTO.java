package org.zerock.bambino.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.zerock.bambino.vo.MembershipVO;

import java.time.LocalDate;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MembershipDTO {
    private String name;
    private String id;
    private String pw;
    private String emailId;
    private String emailAddress;
    private String tel;
    private String gender;
    private String agree;
    private LocalDate regidate;

    public MembershipDTO(MembershipVO vo) {
        this.name = vo.getName();
        this.id = vo.getId();
        this.pw = vo.getPw();
        this.emailId = vo.getEmailId();
        this.emailAddress = vo.getEmailAddress();
        this.tel = vo.getTel();
        this.gender = vo.getGender();
        this.agree = vo.getAgree();
        this.regidate = vo.getRegidate();
    }
    public MembershipVO convertVO() {
        return MembershipVO.builder()
                .name(this.name)
                .id(this.id)
                .pw(this.pw)
                .emailId(this.emailId)
                .emailAddress(this.emailAddress)
                .tel(this.tel)
                .gender(this.gender)
                .agree(this.agree)
                .regidate(this.regidate)
                .build();
    }
}
