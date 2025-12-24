package org.zerock.bambino.controller.exception;

import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.ControllerAdvice;

// Controller에서 예외가 발생했을 때 처리하는 부분
@ControllerAdvice
@Log4j2
public class CommonExceptionAdvice {

//    @ExceptionHandler(MethodArgumentTypeMismatchException.class) // 예외 발생시 실행하는 메서드 설정
//    @ResponseBody   // 화면이 아닌 다른 데이터를 돌려주는 경우 설정
//    // 매개변수에 설정된 예외에 따라 메서드가 실행됨
//    public String exceptNumber(MethodArgumentTypeMismatchException e) {
//        log.error("--------------------------");
//        log.error(e.getMessage());
//        return "NUMBER FORMAT EXCEPTION";
//    }
//    @ExceptionHandler   // 예외 발생시 실행하는 메서드 설정
//    @ResponseBody   // 화면이 아닌 다른 데이터를 돌려주는 경우 설정
//    // 매개변수에 설정된 예외에 따라 메서드가 실행됨
//    public String exceptComme(Exception e){
//        log.error("--------------------------");
//        log.error(e.getMessage());
//        return "설정하지 않은 모든 예외의 경우 실행됨";
//    }
//    @ExceptionHandler(NoHandlerFoundException.class)
//    @ResponseStatus(HttpStatus.NOT_FOUND)
//    public String notFound() {
//        return "custom404";
//    }
}
