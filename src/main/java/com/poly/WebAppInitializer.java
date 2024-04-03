package com.poly;


import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

import com.poly.config.MessagesConfig;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;

public class WebAppInitializer implements WebApplicationInitializer {
public void onStartup(ServletContext container ) throws ServletException {
	   AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
       ctx.register(MessagesConfig.class);
       ctx.setServletContext(container);
       
       DispatcherServlet dispatcherServlet = new DispatcherServlet(ctx);
       dispatcherServlet.setThrowExceptionIfNoHandlerFound(true);
       
       
       ServletRegistration.Dynamic servlet = container.addServlet("dispatcher",dispatcherServlet );
       servlet.setLoadOnStartup(1);
       servlet.addMapping("/");
       CharacterEncodingFilter chacCharacterEncodingFilter = new CharacterEncodingFilter("UTF-8",true);
       container.addFilter("encodingFilter", chacCharacterEncodingFilter)
       .addMappingForUrlPatterns(null, false, "/*");
   }
}

