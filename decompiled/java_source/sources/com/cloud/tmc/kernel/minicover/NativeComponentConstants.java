package com.cloud.tmc.kernel.minicover;

import com.cloud.tmc.kernel.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0019\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/kernel/minicover/NativeComponentConstants;", "", "()V", "ERROR_CODE_COMPONENT_CREAT_FAILED", "", "ERROR_CODE_NO_ARGS", "ERROR_CODE_NO_METHOD", "ERROR_CODE_THROW_EXCEPTION", "ERROR_MSG_COMPONENT_CREAT_FAILED", "ERROR_MSG_NO_ARGS", "ERROR_MSG_NO_METHOD", "KEY_COMPONENT_ABILITY_NAME", "KEY_COMPONENT_CALLBACK_ID", "KEY_COMPONENT_DATA_JSON", "KEY_COMPONENT_ERRCODE", "KEY_COMPONENT_ERRMSG", "KEY_COMPONENT_EVENT_ARGS", "KEY_COMPONENT_ID", "KEY_COMPONENT_METHOD_NAME", "KEY_COMPONENT_RENDER_ID", "KEY_COMPONENT_RESULT_SUCCESS", "KEY_COMPONENT_TYPE", "KEY_COMPONENT_TYPE_NATIVE_CALL", "KEY_COMPONENT_VIEW_ID", "NATIVE_COMPONENT_INSERT", "NATIVE_COMPONENT_REMOVE", "NATIVE_COMPONENT_UPDATE", "NATIVE_DISPATCH_COMPONENT", "NATIVE_DISPATCH_EVENT", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NativeComponentConstants {
    public static final String ERROR_CODE_COMPONENT_CREAT_FAILED = "3";
    public static final String ERROR_CODE_NO_ARGS = "2";
    public static final String ERROR_CODE_NO_METHOD = "1";
    public static final String ERROR_CODE_THROW_EXCEPTION = "4";
    public static final String ERROR_MSG_COMPONENT_CREAT_FAILED = "Component creat failed";
    public static final String ERROR_MSG_NO_ARGS = "args is null";
    public static final String ERROR_MSG_NO_METHOD = "method is not exist";
    public static final NativeComponentConstants INSTANCE = new NativeComponentConstants();
    public static final String KEY_COMPONENT_ABILITY_NAME = "abilityName";
    public static final String KEY_COMPONENT_CALLBACK_ID = "callbackId";
    public static final String KEY_COMPONENT_DATA_JSON = "dataJson";
    public static final String KEY_COMPONENT_ERRCODE = "errCode";
    public static final String KEY_COMPONENT_ERRMSG = "errMsg";
    public static final String KEY_COMPONENT_EVENT_ARGS = "args";
    public static final String KEY_COMPONENT_ID = "componentId";
    public static final String KEY_COMPONENT_METHOD_NAME = "methodName";
    public static final String KEY_COMPONENT_RENDER_ID = "renderId";
    public static final String KEY_COMPONENT_RESULT_SUCCESS = "success";
    public static final String KEY_COMPONENT_TYPE = "type";
    public static final String KEY_COMPONENT_TYPE_NATIVE_CALL = "nativeCall";
    public static final String KEY_COMPONENT_VIEW_ID = "viewId";
    public static final String NATIVE_COMPONENT_INSERT = "insertNativeCover";
    public static final String NATIVE_COMPONENT_REMOVE = "removeNativeCover";
    public static final String NATIVE_COMPONENT_UPDATE = "updateNativeCover";
    public static final String NATIVE_DISPATCH_COMPONENT = "DispatchNativeComponent";
    public static final String NATIVE_DISPATCH_EVENT = "DispatchNativeEvent";

    private NativeComponentConstants() {
    }
}
