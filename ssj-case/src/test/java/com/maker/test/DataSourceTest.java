package com.maker.test;

import com.maker.ssj.context.config.SpringApplicationContextConfig;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.sql.DataSource;

@ContextConfiguration(classes = SpringApplicationContextConfig.class)
@ExtendWith(SpringExtension.class)
public class DataSourceTest {
    private static final Logger LOGGER= LoggerFactory.getLogger(DataSourceTest.class);
    @Autowired
    private DataSource dataSource;
    @Test
    public void getDataSource() throws Exception{
        LOGGER.info("获取数据源对象：{}",dataSource.getConnection());
    }
}
