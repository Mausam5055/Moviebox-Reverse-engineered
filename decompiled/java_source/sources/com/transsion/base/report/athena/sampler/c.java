package com.transsion.base.report.athena.sampler;

import android.os.Bundle;
import java.security.NoSuchAlgorithmException;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f43010a = new c();

    private c() {
    }

    public final Bundle a(Bundle bundle) {
        Intrinsics.h(bundle, "<this>");
        Bundle bundle2 = new Bundle();
        for (String str : bundle.keySet()) {
            bundle2.putString(str, bundle.getString(str));
        }
        return bundle2;
    }

    public final boolean b(String event, Bundle bundle, String deviceId) throws NoSuchAlgorithmException {
        Intrinsics.h(event, "event");
        Intrinsics.h(bundle, "bundle");
        Intrinsics.h(deviceId, "deviceId");
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "sampler", "ReportInterception --> intercept() --> 开始处理埋点拦截逻辑 --> event = " + event, false, 4, null);
        Triple tripleA = a.f43008a.a(event, a(bundle));
        boolean z10 = false;
        if (Intrinsics.c(tripleA.getFirst(), Boolean.TRUE)) {
            lg.a.C0828a.f(c0828a, "sampler", "ReportInterception --> intercept() --> 事件表达式 命中 --> 下一步采样率判断", false, 4, null);
            b bVar = b.f43009a;
            Integer num = (Integer) tripleA.getSecond();
            double dIntValue = num != null ? num.intValue() : 100.0d;
            String str = (String) tripleA.getThird();
            if (str == null) {
                str = "";
            }
            boolean zA = bVar.a(dIntValue, deviceId, str, 100);
            lg.a.C0828a.f(c0828a, "sampler", "ReportInterception --> intercept() --> 采样率命中 = " + zA, false, 4, null);
            if (zA) {
                bundle.putString("sampling_rate", String.valueOf(tripleA.getSecond()));
                EventConfig eventConfig = EventConfig.f43003a;
                eventConfig.i(event);
                eventConfig.h(event);
            } else {
                Integer num2 = (Integer) tripleA.getSecond();
                if (Intrinsics.a(num2 != null ? Double.valueOf(num2.intValue()) : null, 0.0d)) {
                    EventConfig.f43003a.a(event);
                } else {
                    EventConfig.f43003a.b(event);
                }
            }
            if (!zA) {
                z10 = true;
            }
        } else {
            lg.a.C0828a.f(c0828a, "sampler", "ReportInterception --> intercept() --> 事件表达式 没有命中 --> 不需要处理采样率 --> 直接上报埋点 --> event = " + event, false, 4, null);
        }
        if (z10) {
            lg.a.C0828a.f(c0828a, "sampler", "埋点拒绝上报 --> event = " + event, false, 4, null);
        } else {
            EventConfig eventConfig2 = EventConfig.f43003a;
            bundle.putString("close_event", eventConfig2.c().toString());
            bundle.putString("miss_event", eventConfig2.d().toString());
            lg.a.C0828a.f(c0828a, "sampler", "track: 日志上报 --> bundle = " + bundle, false, 4, null);
        }
        return z10;
    }
}
