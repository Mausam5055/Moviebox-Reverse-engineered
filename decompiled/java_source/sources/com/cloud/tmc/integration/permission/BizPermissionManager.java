package com.cloud.tmc.integration.permission;

import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public interface BizPermissionManager {
    boolean checkBizParamPermission(String str, String str2, JsonObject jsonObject);
}
