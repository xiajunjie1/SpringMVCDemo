package com.maker.common.validate.abs;

import com.maker.common.validate.IValidateRule;

public abstract class AbstractValidateRule implements IValidateRule {
    @Override
    public String errorMsg() {
        return "请求数据错误，无法通过验证，请确认数据内容是否正确";
    }
}
