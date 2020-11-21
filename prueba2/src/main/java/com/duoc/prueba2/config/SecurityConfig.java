package com.duoc.prueba2.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private BCryptPasswordEncoder passEncoder;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests()		
		.antMatchers("/","/css/**","/js/**","/img/**").permitAll()
		.antMatchers("/servicioTurismo").hasAnyRole("ADMIN","USERTUR")		
		.antMatchers("/servicioPremium").hasAnyRole("ADMIN","USERPRE")
		.anyRequest().authenticated()
		.and()	
		.formLogin().loginPage("/login").permitAll()
		.and()
		.logout().permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/403")
		;
	}
	
	@Autowired
	public void configurerSecurityGlobal(AuthenticationManagerBuilder builder) throws Exception {
		builder.jdbcAuthentication()
		.dataSource(dataSource)
		.passwordEncoder(passEncoder)
		.usersByUsernameQuery("SELECT username, password, enabled FROM users WHERE username = ?")
		.authoritiesByUsernameQuery("SELECT u.username, r.rol FROM users u INNER JOIN roles r ON u.id= r.user_id WHERE u.username =?");
	
	}

}
