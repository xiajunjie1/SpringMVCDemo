package com.maker.common.validate.rule;

import com.maker.common.validate.IValidateRule;
import com.maker.common.validate.abs.AbstractValidateRule;
import org.springframework.util.StringUtils;

public class IntsValidateRule extends AbstractValidateRule implements IValidateRule {

    @Override
    public boolean validate(Object str) {
        String[] values =getParameterValues(str);
        if(values==null || values.length<1){
            return false;
        }
        for(int i=0;i<values.length;i++){
            if(!values[i].matches("\\d+")){
                return false;
            }
        }
        return true;
    }

    @Override
    public String errorMsg() {
        return "请求参数必须为整数";
    }
}
