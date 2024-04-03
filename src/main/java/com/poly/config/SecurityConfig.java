package com.poly.config;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.poly.service.CustomUserDetailsService;


@Configuration
@EnableWebSecurity

public class SecurityConfig {
	@Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public UserDetailsService userDetailsService() {
        return new CustomUserDetailsService(); // Thay thế bằng implementation của bạn
    }

    @Bean
    public AuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailsService());
        authenticationProvider.setPasswordEncoder(passwordEncoder());
        return authenticationProvider;
    }
	
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
      return http
          .csrf(AbstractHttpConfigurer::disable)
          .authorizeHttpRequests(
              req -> req
                  .requestMatchers("/authen", "/authen/**", "/authen/info").authenticated()
                  .anyRequest().permitAll())
          .formLogin(form -> form
              .loginPage("/account/login")
              .usernameParameter("your_name")
              .passwordParameter("your_pass")
              .loginProcessingUrl("/user/login-check")
              .defaultSuccessUrl("/user/layout")
              .failureUrl("/user/login/failure"))
          	  .logout(logout -> logout.logoutSuccessUrl("/user/logout"))
//          .oauth2Login(ou -> ou
//              .authorizationEndpoint(e -> e.baseUri("/oauth2/authorization"))
//              .redirectionEndpoint(e -> e.baseUri("/login/oauth2/code/*"))
//              .userInfoEndpoint(e -> e.userService(null)))
          .exceptionHandling(e -> e.accessDeniedPage("/account/accessDenied"))
          .build();
    }
}


