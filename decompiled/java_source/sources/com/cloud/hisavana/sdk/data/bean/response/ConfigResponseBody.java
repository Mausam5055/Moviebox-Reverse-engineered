package com.cloud.hisavana.sdk.data.bean.response;

/* JADX INFO: loaded from: classes.dex */
public class ConfigResponseBody {
    private Integer code;
    private ConfigTotalDTO data;
    private String message;

    public Integer getCode() {
        Integer num = this.code;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public ConfigTotalDTO getData() {
        return this.data;
    }

    public String getMessage() {
        String str = this.message;
        return str == null ? "" : str;
    }
}
