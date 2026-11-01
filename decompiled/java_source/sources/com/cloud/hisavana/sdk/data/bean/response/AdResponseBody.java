package com.cloud.hisavana.sdk.data.bean.response;

/* JADX INFO: loaded from: classes.dex */
public class AdResponseBody {
    private Integer code;
    private DataDTO data;
    private String message;
    private boolean trackingUrlBool;

    public Integer getCode() {
        Integer num = this.code;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public DataDTO getData() {
        return this.data;
    }

    public String getMessage() {
        String str = this.message;
        return str == null ? "" : str;
    }

    public String toString() {
        return "AdResponseBody{code=" + this.code + ", message='" + this.message + "', data=" + this.data + '}';
    }
}
