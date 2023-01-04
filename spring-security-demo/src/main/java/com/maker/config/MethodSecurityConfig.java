package com.maker.config;

import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;

@EnableGlobalMethodSecurity(
        prePostEnabled = true, //对应业务层：@PreAuthorize与@PostAuthorize注解启用
        securedEnabled = true, // 对应业务层  @Secured
        jsr250Enabled = true //JSR-250安全注解标准
)
public class MethodSecurityConfig { //方法安全控制
}
