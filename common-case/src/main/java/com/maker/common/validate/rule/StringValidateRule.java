package com.maker.common.validate.rule;

import com.maker.common.validate.IValidateRule;
import com.maker.common.validate.abs.AbstractValidateRule;
import org.springframework.util.StringUtils;

public class StringValidateRule extends AbstractValidateRule implements IValidateRule {

    @Override
    public boolean validate(Object str) {
        String value =getParameterValue(str);
        return StringUtils.hasLength(value);
    }

    @Override
    public String errorMsg() {
        return "请求数据不允许为空";
    }
}
