package org.zerock.bambino.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.bambino.dto.MembershipDTO;
import org.zerock.bambino.service.MembershipService;

@Controller
@RequiredArgsConstructor
@Log4j2
@RequestMapping("/membership")
public class MembershipController {
    private final MembershipService membershipService;

    @GetMapping("/login")
    public String loginForm() {
        return "membership/login";
    }
    @PostMapping("/login")
    public String login(MembershipDTO param, HttpSession session,
                        HttpServletRequest request, HttpServletResponse response){
        MembershipDTO loginData = membershipService.login(param);
        if(loginData == null) {
            return "redirect:/membership/login?msg=error";
        }
        session.setAttribute("loginData", loginData);
        return "redirect:/";
    }

    @GetMapping("/join")
    public String joinForm() {
        return "membership/join";
    }
    @PostMapping("/join")
    public String join(MembershipDTO dto) {
        membershipService.join(dto);
        return "redirect:/membership/login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("loginData");
        session.invalidate();
        return "redirect:/membership/login";
    }

    @GetMapping("/mypage")
    public String mypage() {
        return "membership/mypage";
    }
}
