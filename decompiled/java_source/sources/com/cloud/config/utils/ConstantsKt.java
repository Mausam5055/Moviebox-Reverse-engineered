package com.cloud.config.utils;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\u001a\n\u0010\u000f\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0010\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0011\u001a\u00020\u0001*\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"CONTENT_MD5", "", "ERROR_1000", "", "ERROR_1000_MESSAGE", "ERROR_1001", "ERROR_1001_MESSAGE", "ERROR_1002", "ERROR_1002_MESSAGE", "ERROR_1003", "ERROR_1003_MESSAGE", "ERROR_1004", "ERROR_1004_MESSAGE", "ERROR_1005", "ERROR_1005_MESSAGE", "toStoreConfigName", "toStoreConfigUrlName", "toStoreMd5Name", "config_release"}, k = 2, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ConstantsKt {
    public static final String CONTENT_MD5 = "content-md5";
    public static final int ERROR_1000 = 1000;
    public static final String ERROR_1000_MESSAGE = "data is null";
    public static final int ERROR_1001 = 1001;
    public static final String ERROR_1001_MESSAGE = "code isn't 0";
    public static final int ERROR_1002 = 1002;
    public static final String ERROR_1002_MESSAGE = "gateway failure";
    public static final int ERROR_1003 = 1003;
    public static final String ERROR_1003_MESSAGE = "try catch exception";
    public static final int ERROR_1004 = 1004;
    public static final String ERROR_1004_MESSAGE = "request failure";
    public static final int ERROR_1005 = 1005;
    public static final String ERROR_1005_MESSAGE = "request is null";

    public static final String toStoreConfigName(String str) {
        Intrinsics.h(str, "<this>");
        return Intrinsics.q("config_", str);
    }

    public static final String toStoreConfigUrlName(String str) {
        Intrinsics.h(str, "<this>");
        return "config_" + str + "_url";
    }

    public static final String toStoreMd5Name(String str) {
        Intrinsics.h(str, "<this>");
        return "config_" + str + "_md5";
    }
}
