package com.maker.common.validate.rule;

import com.maker.common.validate.IValidateRule;
import com.maker.common.validate.abs.AbstractValidateRule;
import org.springframework.util.StringUtils;

public class StringsValidateRule extends AbstractValidateRule implements IValidateRule {

    @Override
    public boolean validate(Object str) {
        String[] values =getParameterValues(str);
        return values !=null ;
    }

    @Override
    public String errorMsg() {
        return "请求数据不允许为空";
    }
}
