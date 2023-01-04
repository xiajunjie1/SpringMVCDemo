package com.maker.ssj.context.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@ComponentScans(
        {
                @ComponentScan("com.maker.common.web.config"),
                @ComponentScan("com.maker.ssj.config"),
                @ComponentScan("com.maker.ssj.service"),
                @ComponentScan("com.maker.ssj.dao")
        }
)
@EnableJpaRepositories("com.maker.ssj.dao")
public class SpringApplicationContextConfig {
}
