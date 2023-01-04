package com.maker.test;

import com.maker.ssj.context.config.SpringApplicationContextConfig;
import com.maker.ssj.service.IItemService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.concurrent.TimeUnit;

@ContextConfiguration(classes = {SpringApplicationContextConfig.class})
@ExtendWith(SpringExtension.class)
public class ItemServiceTest {
   @Autowired
    private IItemService service;

   private static final Logger LOGGER= LoggerFactory.getLogger(ItemServiceTest.class);
    @Test
    public void listTest() throws Exception{
      LOGGER.info("第一次查询：{}",service.list());
        TimeUnit.SECONDS.sleep(3);
        LOGGER.info("第二次查询：{}",service.list());
    }
}
