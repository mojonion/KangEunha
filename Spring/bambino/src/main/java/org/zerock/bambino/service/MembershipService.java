package org.zerock.bambino.service;

import org.zerock.bambino.dto.MembershipDTO;

public interface MembershipService {
    MembershipDTO login(MembershipDTO dto);
    void join(MembershipDTO dto);
}
