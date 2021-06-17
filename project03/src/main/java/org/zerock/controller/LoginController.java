package org.zerock.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.alpreah.domain.member;
import org.alpreah.persistence.member_dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.core.MethodParameter;
import org.springframework.http.MediaType;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.method.annotation.AbstractMappingJacksonResponseBodyAdvice;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class LoginController {

	@Autowired
	private member_dao m_dao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@ResponseBody
	@RequestMapping(value = "Login", method = RequestMethod.POST)
	public int login(member m, HttpSession session) {
		return m_dao.Login(m, session);
	}

	@RequestMapping("/pwFind")
	public String pwFind() {
		return "pwFind";
	}

	@ResponseBody
	@RequestMapping(value = "PwFind", method = RequestMethod.POST)
	public int pwFind(member m, HttpSession session) {
		return m_dao.pwFind(m, session);
	}

	@RequestMapping("/pw")
	public String pw() {
		return "pw";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "register";
	}

	@ResponseBody
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public int register(member m) {
		return m_dao.Register(m);
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("m");
		return "redirect:/";
	}

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show() {
		return "show";
	}
	
	@ControllerAdvice
	public class JsonpAdviceController extends AbstractMappingJacksonResponseBodyAdvice {
		public JsonpAdviceController() {
			super();
		}

		@Override
		protected void beforeBodyWriteInternal(MappingJacksonValue bodyContainer, MediaType contentType,
				MethodParameter returnType, ServerHttpRequest request, ServerHttpResponse response) {
			// TODO Auto-generated method stub

		}
	}

	@Bean
	public MappingJackson2HttpMessageConverter mappingJackson2HttpMessageConverter() {
		MappingJackson2HttpMessageConverter jsonConverter = new MappingJackson2HttpMessageConverter();
		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		jsonConverter.setObjectMapper(objectMapper);
		return jsonConverter;
	}

}
