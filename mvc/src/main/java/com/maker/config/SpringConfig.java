package com.maker.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("com.maker.service")
@ComponentScan("com.maker.advice")
public class SpringConfig {
}
