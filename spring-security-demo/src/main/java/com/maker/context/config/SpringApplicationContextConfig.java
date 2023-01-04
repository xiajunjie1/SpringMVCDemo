package com.maker.context.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("com.maker.dao,com.maker.service,com.maker.config")
public class SpringApplicationContextConfig {
}
