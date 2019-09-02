package com.ssafy.edu.vue;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;
@SpringBootApplication
@EnableTransactionManagement
public class SSAFYApplication {
    // 이것을 실행시키면 레스트풀 메인 시작
	public static void main(String[] args) {
		SpringApplication.run(SSAFYApplication.class, args);
	}
}//명사형보다 동사형
//http://localhost:8197/ssafyvue/swagger-ui.html