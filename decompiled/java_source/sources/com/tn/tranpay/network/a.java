package com.tn.tranpay.network;

import android.app.Application;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.tn.tranpay.TranPay;
import com.tn.tranpay.device.TNDeviceHelper;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements Interceptor {
    private final String a() {
        try {
            Application applicationD = TranPay.f41486a.d();
            String str = applicationD.getPackageManager().getPackageInfo(applicationD.getPackageName(), 0).versionName;
            Intrinsics.g(str, "{\n            // 使用 Tran… 0).versionName\n        }");
            return str;
        } catch (Exception e11) {
            ai.a.e(ai.a.f619a, "Failed to get app version: " + e11.getMessage(), null, 2, null);
            return TmcConstants.ROUTE_UNKNOWN;
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.h(chain, "chain");
        List<Pair> listQ = CollectionsKt.q(TuplesKt.a("sdkVersion", TranPay.f41486a.e()), TuplesKt.a(TmcStartParams.KEY_APP_VERSION, a()), TuplesKt.a("deviceId", TNDeviceHelper.f41530a.c()), TuplesKt.a(TrackingKey.PLATFORM, "android"), TuplesKt.a(HttpHeaders.CONTENT_TYPE, "application/json;charset=UTF-8"));
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        for (Pair pair : listQ) {
            builderNewBuilder.header((String) pair.getFirst(), (String) pair.getSecond());
        }
        return chain.proceed(builderNewBuilder.build());
    }
}
