package org.zerock.bambino.mappers;

import org.zerock.bambino.vo.MembershipVO;

public interface MembershipMapper {
    MembershipVO login(MembershipVO vo);
    void join(MembershipVO vo);
}
