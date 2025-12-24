package org.zerock.bambino.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.zerock.bambino.dto.MembershipDTO;
import org.zerock.bambino.mappers.MembershipMapper;
import org.zerock.bambino.vo.MembershipVO;

@Service
@RequiredArgsConstructor
public class MembershipServiceImpl implements MembershipService {
    private final MembershipMapper membershipMapper;

    public MembershipDTO login(MembershipDTO param) {
        // mapper에서 사용하기 위해 dto를 vo로 변환
        MembershipVO vo = param.convertVO();
        // DB에서 id와 pw로 조회
        MembershipVO loginVO = membershipMapper.login(vo);
        // 조회 결과가 없을 때
        if(loginVO == null || loginVO.getId() == null) {
            return null;
        }
        // 조회 결과를 VO에 DTO로 변환
        MembershipDTO loginDTO = new MembershipDTO(loginVO);
        // 반환 실행
        return loginDTO;
    }

    @Override
    public void join(MembershipDTO dto) {
        MembershipVO vo = dto.convertVO();
        membershipMapper.join(vo);
    }
}
