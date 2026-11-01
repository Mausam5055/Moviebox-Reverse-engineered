package com.cloud.tmc.integration.net;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.network.IResponseCallback;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gg.b;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Cookie;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0002J\b\u0010\t\u001a\u00020\nH&J.\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH&J$\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00102\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0016J.\u0010\u0015\u001a\u00020\f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00052\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH&JJ\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u00102\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0016¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/integration/net/TmcResponseCallback;", "T", "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;", "()V", "getFailBean", "Lcom/cloud/tmc/integration/net/BaseResponse;", "", "gatewayBean", "Lcom/cloud/tmc/integration/net/GatewayBean;", "getType", "Ljava/lang/reflect/Type;", "onFail", "", "fail", "headers", "", "", "onFailure", NativeComponentConstants.KEY_COMPONENT_ERRCODE, "errMsg", "callbackId", "onSuccess", "bean", "responseCode", "", "responseStr", "cookies", "", "Lokhttp3/Cookie;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class TmcResponseCallback<T> implements IResponseCallback {
    private final BaseResponse<Object> getFailBean(GatewayBean gatewayBean) {
        return new BaseResponse<>(-4, null, gatewayBean.getErrorMessage(), gatewayBean.getCallbackId());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void onFail$default(TmcResponseCallback tmcResponseCallback, BaseResponse baseResponse, Map map, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onFail");
        }
        if ((i11 & 2) != 0) {
            map = null;
        }
        tmcResponseCallback.onFail(baseResponse, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void onSuccess$default(TmcResponseCallback tmcResponseCallback, BaseResponse baseResponse, Map map, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onSuccess");
        }
        if ((i11 & 2) != 0) {
            map = null;
        }
        tmcResponseCallback.onSuccess(baseResponse, map);
    }

    public abstract Type getType();

    public abstract void onFail(BaseResponse<? extends Object> fail, Map<String, String> headers);

    @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
    public void onFailure(String errCode, String errMsg, String callbackId) {
        Intrinsics.h(errCode, "errCode");
        try {
            b.f63567a.c(errMsg);
            onFail$default(this, new BaseResponse(-1, null, errMsg, callbackId), null, 2, null);
        } catch (Exception e11) {
            TmcLogger.e(e11.getMessage());
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
    public void onSuccess(int responseCode, String responseStr, Map<String, String> headers, List<Cookie> cookies, String callbackId) {
        try {
            if (responseStr == null) {
                onFail(new BaseResponse<>(-2, null, "response body is null", callbackId), headers);
                b.f63567a.g("onResponse body is null");
            } else if (StringsKt.c0(responseStr, "error_code", false, 2, null)) {
                Object objFromJson = TmcGsonUtils.fromJson(responseStr, TmcResponseCallbackKt.getGatewayType());
                ((GatewayBean) objFromJson).setCallbackId(callbackId);
                onFail(getFailBean((GatewayBean) objFromJson), headers);
            } else if (responseCode == 200) {
                JSONObject jSONObject = new JSONObject(responseStr);
                int i11 = jSONObject.getInt("code");
                if (i11 == 0) {
                    Object objFromJson2 = TmcGsonUtils.fromJson(responseStr, getType());
                    ((BaseResponse) objFromJson2).setCallbackId(callbackId);
                    onSuccess((BaseResponse) objFromJson2, headers);
                } else {
                    onFail(new BaseResponse<>(i11, null, jSONObject.getString("message"), callbackId), headers);
                }
            } else {
                Object objFromJson3 = TmcGsonUtils.fromJson(responseStr, TmcResponseCallbackKt.getFailType());
                ((BaseResponse) objFromJson3).setCallbackId(callbackId);
                onFail((BaseResponse) objFromJson3, headers);
            }
        } catch (Exception e11) {
            b.f63567a.g("onResponse e = " + e11);
            onFail(new BaseResponse<>(-3, null, "response Exception : " + e11, callbackId), headers);
        }
    }

    public abstract void onSuccess(BaseResponse<? extends T> bean, Map<String, String> headers);
}
