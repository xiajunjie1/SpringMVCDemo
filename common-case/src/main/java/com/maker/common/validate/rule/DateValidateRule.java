package com.maker.common.validate.rule;

import com.maker.common.validate.IValidateRule;
import com.maker.common.validate.abs.AbstractValidateRule;
import org.springframework.util.StringUtils;

public class DateValidateRule extends AbstractValidateRule implements IValidateRule {

    @Override
    public boolean validate(Object str) {
        String value =getParameterValue(str);
        if(!StringUtils.hasLength(value)){
            return false;
        }
        return value.matches("\\d{4}-\\d{2}-\\d{2}");
    }

    @Override
    public String errorMsg() {
        return "请求参数必须为日期（yyyy-MM-dd）";
    }
}
