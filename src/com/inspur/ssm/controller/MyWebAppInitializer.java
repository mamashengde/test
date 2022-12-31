package com.inspur.ssm.controller;//package com.inspur.ssm.controller;
//
//import java.io.IOException;
//
//import javax.servlet.Filter;
//import javax.servlet.MultipartConfigElement;
//import javax.servlet.ServletRegistration.Dynamic;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.core.io.FileSystemResource;
//import org.springframework.web.filter.CharacterEncodingFilter;
//import org.springframework.web.multipart.MultipartResolver;
//import org.springframework.web.multipart.commons.CommonsMultipartResolver;
//import org.springframework.web.multipart.support.StandardServletMultipartResolver;
//import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
//
///**
// * 在Servlet3.0环境中，容器会在类路径中查询实现
// * javax.servlet.ServletContainerInitializer 接口的类，如果发现的话，就会用它来配置Servlet容器
// * @author silvan
// *
// */
//public class MyWebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer{
//	//IOC容器配置
//	@Override
//	protected Class<?>[] getRootConfigClasses() {
//		// TODO Auto-generated method stub
//		return new Class<?>[] {};
//	}
//	//DispatcherServlet的 URI映射关系配置
//	@Override
//	protected Class<?>[] getServletConfigClasses() {
//		// TODO Auto-generated method stub
////		return new Class<?>[] {WebConfig.class};
//	}
//
//	/* 
//	 * 将DispatchServlet映射到"/"
//	 * (non-Javadoc)
//	 * @see org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer#getRootConfigClasses()
//	 */
//	@Override
//	protected String[] getServletMappings() {
//		
//		return new String[] {"/"};
//	}
// 
//	@Override
//	protected Filter[] getServletFilters() {
//		CharacterEncodingFilter c = new CharacterEncodingFilter();
//		c.setEncoding("UTF-8");
//		c.setForceRequestEncoding(true);
//		return new Filter[] {c};  
//	}
// 
//	/** 
//	 * 配置上传的信息
//	 *  (non-Javadoc)
//	 *  第一个参数是基础位置，在D盘根目录下，限制文件大小为2M，总共请求的大小不能大于4M
//	 * @see org.springframework.web.servlet.support.AbstractDispatcherServletInitializer#customizeRegistration(javax.servlet.ServletRegistration.Dynamic)
//	 */
//	@Override
//	protected void customizeRegistration(Dynamic registration) {
//		registration.setMultipartConfig(new MultipartConfigElement("D:/",2097152,419304,0));
//	}
//	
//	@Bean(name=" multipartResolver")
//	public MultipartResolver initCommonsMultipartResolver(){
//		//文件上传路径
//		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
//		multipartResolver.setMaxUploadSizePerFile(2097152);
//		multipartResolver.setMaxUploadSize(419304);
//		try {
//			multipartResolver.setUploadTempDir(new FileSystemResource("D:/"));
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	    return multipartResolver;
//	}
//
//
//}
