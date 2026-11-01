package com.hisavana.common.utils;

import com.cloud.sdk.commonutil.util.c;

/* JADX INFO: loaded from: classes.dex */
public class AdLogUtil extends c {
    private static final String TAG = "ADSDK_M";
    private static final AdLogUtil adLogUtil = new AdLogUtil();

    public static AdLogUtil Log() {
        return adLogUtil;
    }

    @Override // com.cloud.sdk.commonutil.util.c
    public String getGlobalTag() {
        return TAG;
    }
}
