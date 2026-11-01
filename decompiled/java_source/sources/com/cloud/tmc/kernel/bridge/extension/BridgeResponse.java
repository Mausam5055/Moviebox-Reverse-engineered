package com.cloud.tmc.kernel.bridge.extension;

import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public class BridgeResponse {
    public static final int ERROR_CODE_FORBIDDEN_ERROR = 4;
    public static final int ERROR_CODE_INVALID_PARAM = 2;
    public static final int ERROR_CODE_JAVA_EXCEPTION = 6;
    public static final int ERROR_CODE_NOT_FOUND = 1;
    public static final int ERROR_CODE_SUCCESS = 0;
    public static final int ERROR_CODE_SYSTEM_ERROR = 5;
    public static final int ERROR_CODE_UNAUTHORIZED_USERINFO = 10;
    public static final int ERROR_CODE_UNKNOWN_ERROR = 3;
    private JsonObject response;
    public static BridgeResponse SUCCESS = new BridgeResponse(null) { // from class: com.cloud.tmc.kernel.bridge.extension.BridgeResponse.1
        @Override // com.cloud.tmc.kernel.bridge.extension.BridgeResponse
        public JsonObject get() {
            return new JsonObject();
        }
    };
    public static BridgeResponse NOT_FOUND = new Error(1, "not implemented!");
    public static BridgeResponse INVALID_PARAM = new Error(2, "invalid parameter!");
    public static BridgeResponse UNKNOWN_ERROR = new Error(3, "unknown error!");
    public static BridgeResponse FORBIDDEN_ERROR = new Error(4, "forbidden error!");
    public static BridgeResponse UNAUTHORIZED_USERINFO_ERROR = new Error(10, "未授权读取用户信息!");

    public static class Error extends BridgeResponse {
        int errorCode;
        String errorMessage;

        public Error(int i11, String str) {
            super(null);
            this.errorCode = i11;
            this.errorMessage = str;
        }

        @Override // com.cloud.tmc.kernel.bridge.extension.BridgeResponse
        public JsonObject get() {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("error", Integer.valueOf(this.errorCode));
            jsonObject.addProperty("message", this.errorMessage);
            jsonObject.addProperty("errorMessage", this.errorMessage);
            return jsonObject;
        }

        public int getErrorCode() {
            return this.errorCode;
        }

        public String getErrorMessage() {
            return this.errorMessage;
        }
    }

    public static class NamedValue extends BridgeResponse {
        JsonObject response;

        public NamedValue(String str, JsonObject jsonObject) {
            super(null);
            JsonObject jsonObject2 = new JsonObject();
            this.response = jsonObject2;
            jsonObject2.add(str, jsonObject);
        }

        @Override // com.cloud.tmc.kernel.bridge.extension.BridgeResponse
        public JsonObject get() {
            return this.response;
        }
    }

    public BridgeResponse() {
    }

    public BridgeResponse(JsonObject jsonObject) {
        this.response = jsonObject;
    }

    public static Error newError(int i11, String str) {
        return new Error(i11, str);
    }

    public static NamedValue newValue(String str, JsonObject jsonObject) {
        return new NamedValue(str, jsonObject);
    }

    public JsonObject get() {
        return this.response;
    }
}
