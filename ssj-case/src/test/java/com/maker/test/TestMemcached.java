package com.maker.test;

import com.maker.ssj.cache.memcache.MemCachedManager;
import com.maker.ssj.context.config.SpringApplicationContextConfig;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ContextConfiguration(classes = {SpringApplicationContextConfig.class})
@ExtendWith(SpringExtension.class)
public class TestMemcached {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestMemcached.class);
    @Autowired
    private MemCachedManager cacheManager;
    @Test
    public void testConnection() throws Exception {
        this.cacheManager.getCache("JayCache").put("muyan", "muyan-yootk");
        LOGGER.info("【JayCache】获取Memcached数据：muyan = {}",
                this.cacheManager.getCache("JayCache").get("muyan"));
        this.cacheManager.getCache("JayCache").clear();
    }
}