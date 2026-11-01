package com.wecloud.load.lib;

import android.util.Log;
import com.google.gson.Gson;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f60848a = new l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f60849b = LazyKt.b(new Function0() { // from class: com.wecloud.load.lib.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return l.c();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile Boolean f60850c;

    private l() {
    }

    private final Gson b() {
        return (Gson) f60849b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Gson c() {
        return new Gson();
    }

    private final String e() {
        try {
            ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "network_probe", false, 2, null);
            String value = configBeanD != null ? configBeanD.getValue() : null;
            if (value != null && value.length() != 0) {
                int length = value.length();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("got network_probe remote config JSON from ConfigManager, key=network_probe, length=");
                sb2.append(length);
                sb2.append(", value=");
                sb2.append(value);
                return value;
            }
            return null;
        } catch (Exception e11) {
            Log.w("NativeProbeCfgLoader", "load network_probe config from ConfigManager failed: " + e11.getMessage(), e11);
            return null;
        }
    }

    public final boolean d() {
        Object objM454constructorimpl;
        NativeProbeRemoteConfig nativeProbeRemoteConfig;
        Boolean enableOnlineProbe;
        Boolean bool = f60850c;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            String strE = e();
            boolean zBooleanValue = false;
            if (strE != null) {
                String string = StringsKt.n1(strE).toString();
                if (StringsKt.W(string, "\"", false, 2, null) && StringsKt.G(string, "\"", false, 2, null)) {
                    try {
                        String str = (String) b().fromJson(string, String.class);
                        String string2 = str != null ? StringsKt.n1(str).toString() : null;
                        string = string2 == null ? "" : string2;
                    } catch (Exception unused) {
                    }
                }
                String lowerCase = string.toLowerCase(Locale.ROOT);
                Intrinsics.g(lowerCase, "toLowerCase(...)");
                if (Intrinsics.c(lowerCase, "true")) {
                    zBooleanValue = true;
                } else if (!Intrinsics.c(lowerCase, "false") && (nativeProbeRemoteConfig = (NativeProbeRemoteConfig) b().fromJson(string, NativeProbeRemoteConfig.class)) != null && (enableOnlineProbe = nativeProbeRemoteConfig.getEnableOnlineProbe()) != null) {
                    zBooleanValue = enableOnlineProbe.booleanValue();
                }
            }
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(zBooleanValue));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            Log.w("NativeProbeCfgLoader", "parse network_probe remote config failed: " + thM457exceptionOrNullimpl.getMessage(), thM457exceptionOrNullimpl);
        }
        Boolean bool2 = Boolean.FALSE;
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = bool2;
        }
        Boolean bool3 = (Boolean) objM454constructorimpl;
        boolean zBooleanValue2 = bool3.booleanValue();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("network_probe remote config parsed successfully: enabled=");
        sb2.append(zBooleanValue2);
        f60850c = bool3;
        return zBooleanValue2;
    }
}
