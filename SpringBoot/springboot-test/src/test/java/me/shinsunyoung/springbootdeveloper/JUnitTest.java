package me.shinsunyoung.springbootdeveloper;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class JUnitTest {
    @DisplayName("1+2는 3이다")
    @Test
    public void junitTest() {
        int a = 1;
        int b = 2;
        Assertions.assertEquals(a+b, 3);
    }
    @DisplayName("1+3은 4이다")
    @Test
    public void junitFailedTest() {
        int a = 1;
        int b = 3;
        int sum = 3;
        // 결과가 같을 때 테스트 통과를 출력하는 메서드
        Assertions.assertEquals(sum, a+b);
    }
}
