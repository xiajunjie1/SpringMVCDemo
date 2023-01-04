package com.maker.ssj.config;

import com.maker.ssj.cache.memcache.MemCachedManager;
import com.whalin.MemCached.MemCachedClient;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableCaching
public class SpringCacheConfig {
    @Bean
    public CacheManager cacheManager(){
        return new MemCachedManager();
    }
}
