package com.maker.common.validate.rule;

import com.maker.common.validate.IValidateRule;
import com.maker.common.validate.abs.AbstractValidateRule;
import org.springframework.util.StringUtils;

public class BooleanValidateRule extends AbstractValidateRule implements IValidateRule {

    @Override
    public boolean validate(Object str) {
        String value =getParameterValue(str);
        if(!StringUtils.hasLength(value)){
            return false;//无数据返回false
        }
        if ("on".equalsIgnoreCase(value) || "1".equalsIgnoreCase(value) ||
                "up".equalsIgnoreCase(value) || "yes".equalsIgnoreCase(value) ||
                "true".equalsIgnoreCase(value)) {
            return true;
        }
        return false;
    }

    @Override
    public String errorMsg() {
        return "请求数据必须为true或false";
    }
}
