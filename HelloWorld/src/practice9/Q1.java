package practice9;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

class Emp{
	int empno;
	String ename;
	int deptno;
	int sal;
	int comm;
	public Emp(int empno, String ename,int deptno,int sal,int comm) {
		this.empno = empno;
		this.ename = ename;
		this.deptno = deptno;
		this.sal = sal;
		this.comm = comm;
	}
}

public class Q1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Emp> empList = new ArrayList<>();
//						사원번호, 이름, 부서번호, 급여, 커미션
		empList.add(new Emp(7369,"SMITH",20,800,0));
		empList.add(new Emp(7499,"ALLEN",30,1600,300));
		empList.add(new Emp(7521,"WARD",30,1250,500));
		empList.add(new Emp(7654,"MARTIN",30,1250,1400));
		empList.add(new Emp(7788,"SCOTT",20,3000,0));

		// stream 실습하기
		// 1. 사원들의 sal 총합을 출력해보자
		int sumSal = empList.stream()
				.mapToInt(emp -> emp.sal)
				.sum();
		System.out.println("전체 사원의 급여 합계 : " + sumSal);
		
		
		// 2. 사원들의 sal 평균을 출력해보자
		double avg = sumSal / empList.size();
		System.out.println("전체 사원의 평균 급여 : " + avg);
		
		avg = empList.stream()
				.mapToInt(emp -> emp.sal)
				.average().getAsDouble();
		System.out.println("전체 사원의 평균 급여 : " + avg);
		
		
		// 3. 30번 부서에 있는 사람 수를 출력해보자
		long cnt30 = empList.stream()
				.filter(emp -> emp.deptno == 30)
				.count();
		System.out.println("30번 부서의 인원 수 : " + cnt30);
		
		
		// 4. 사원들 중 가장 급여를 많이 받는 사람을 출력해보자
		Emp maxEmp = empList.stream()
				.max(Comparator.comparingInt(emp -> emp.sal))
				.get();
		System.out.println("가장 급여를 많이 받는 사원 : " + maxEmp.ename);
		
		
		// 5. 사원들 중 가장 급여를 적게 받는 사람을 출력해보자
		Emp minEmp = empList.stream()
				.min(Comparator.comparingInt(emp -> emp.sal))
				.get();
		System.out.println("가장 급여를 적게 받는 사원 : " + minEmp.ename);
		
		
		// 6.사원 이름의 첫글자만 출력하고 나머지는 *로 출력해보자
		empList.stream()
		.map(emp -> emp.ename.charAt(0)+ "*".repeat(emp.ename.length()-1))
		.forEach(emp -> System.out.print(emp + "\t"));
	
		System.out.println();
	
		
		// 7. sal은 한 달 급여이고 사원들의 월 평균 근무일수는 21일, 하루 근무시간은 8시간일때 하루 급여와 시급을 출력 해보자
		empList.stream()
		.forEach(emp -> {
			double dayPay = emp.sal / 21;
			double timePay = dayPay / 8;
			System.out.println(emp.ename + "의 하루급여 : " + dayPay + ", 시급 : " + timePay);
		});
		
		
		// 8. 30번 부서에서 가장 sal을 많이 받는 사람을 출력 해보자
		Emp maxEmp30 = empList.stream()
				.filter(emp -> emp.deptno == 30)
				.max(Comparator.comparingInt(emp -> emp.sal))
				.get();
		System.out.println("30번 부서에서 가장 급여를 많이 받는 사원 : " + maxEmp30.ename);
		
		
		// 9. sal과 comm을 더하여 2000 이상 받는 사람 수를 출력해보자
		long cnt2 = empList.stream()
				.filter(emp -> emp.sal + emp.comm > 2000)
				.count();
		System.out.println("급여와 보너스를 포함하여 2000 이상 받는 사원의 수 : " + cnt2);
	}

}













