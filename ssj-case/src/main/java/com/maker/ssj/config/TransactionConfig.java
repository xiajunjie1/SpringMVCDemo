package com.maker.ssj.config;

import org.aspectj.lang.annotation.Aspect;
import org.springframework.aop.Advisor;
import org.springframework.aop.aspectj.AspectJExpressionPointcut;
import org.springframework.aop.support.DefaultPointcutAdvisor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionManager;
import org.springframework.transaction.interceptor.NameMatchTransactionAttributeSource;
import org.springframework.transaction.interceptor.RuleBasedTransactionAttribute;
import org.springframework.transaction.interceptor.TransactionAttribute;
import org.springframework.transaction.interceptor.TransactionInterceptor;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

@Configuration
@Aspect
public class TransactionConfig {
    @Bean
    public PlatformTransactionManager transactionManager(@Autowired DataSource dataSource){
        JpaTransactionManager transactionManager=new JpaTransactionManager();
        transactionManager.setDataSource(dataSource);
        return transactionManager;
    }
    @Bean
    public TransactionInterceptor transactionInterceptor(@Autowired TransactionManager transactionManager){
        TransactionInterceptor transactionInterceptor=new TransactionInterceptor();
        transactionInterceptor.setTransactionManager(transactionManager);
        RuleBasedTransactionAttribute readAttribute=new RuleBasedTransactionAttribute();
        RuleBasedTransactionAttribute requiredAttribute=new RuleBasedTransactionAttribute();
        readAttribute.setReadOnly(true);
        readAttribute.setPropagationBehavior(TransactionDefinition.PROPAGATION_NOT_SUPPORTED);//非事务运行
        requiredAttribute.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
        Map<String, TransactionAttribute> mapAttribute=new HashMap<>();
        //保存方法名称映射
        mapAttribute.put("add*",requiredAttribute);
        mapAttribute.put("edit*",requiredAttribute);
        mapAttribute.put("remove*",requiredAttribute);
        mapAttribute.put("get*",readAttribute);
        mapAttribute.put("find*",readAttribute);
        mapAttribute.put("save*",requiredAttribute);
        mapAttribute.put("delete*",requiredAttribute);
        NameMatchTransactionAttributeSource source=new NameMatchTransactionAttributeSource();
        source.setNameMap(mapAttribute);
        transactionInterceptor.setTransactionAttributeSource(source);
        return transactionInterceptor;

    }
    @Bean
    public Advisor transactionAdvisorAdvice(@Autowired TransactionInterceptor transactionInterceptor){
        String expression="execution(* * com.maker.ssj..service..*.*(..))";
        AspectJExpressionPointcut pointcut =new AspectJExpressionPointcut();
        pointcut.setExpression(expression);
        return new DefaultPointcutAdvisor(pointcut,transactionInterceptor);


    }


}
