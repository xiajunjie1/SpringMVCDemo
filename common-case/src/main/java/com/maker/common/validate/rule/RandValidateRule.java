package com.maker.common.validate.rule;

import com.maker.common.validate.IValidateRule;
import com.maker.common.validate.abs.AbstractValidateRule;
import org.springframework.util.StringUtils;
/**
 * 验证码验证
 * */
public class RandValidateRule extends AbstractValidateRule implements IValidateRule {
    private static final String RAND_SESSION_NAME="rand";
    @Override
    public boolean validate(Object str) {
        String value =getParameterValue(str);
        if(!StringUtils.hasLength(value)){
            return false;
        }
        String rand=(String) (request().getSession().getAttribute(RAND_SESSION_NAME));
        return value.equalsIgnoreCase(rand);
    }

    @Override
    public String errorMsg() {
        return "验证码错误";
    }
}
