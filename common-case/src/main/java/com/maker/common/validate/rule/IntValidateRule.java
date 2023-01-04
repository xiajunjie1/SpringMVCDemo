package com.maker.common.validate.rule;

import com.maker.common.validate.IValidateRule;
import com.maker.common.validate.abs.AbstractValidateRule;
import org.springframework.util.StringUtils;

public class IntValidateRule extends AbstractValidateRule implements IValidateRule {

    @Override
    public boolean validate(Object str) {
        String value =getParameterValue(str);
        if(!StringUtils.hasLength(value)){
            return false;
        }
        return value.matches("\\d+");
    }

    @Override
    public String errorMsg() {
        return "请求参数必须为整数";
    }
}
