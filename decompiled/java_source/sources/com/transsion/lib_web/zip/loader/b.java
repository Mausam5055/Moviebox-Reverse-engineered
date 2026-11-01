package com.transsion.lib_web.zip.loader;

import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f46200a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f46201b = LazyKt.b(new Function0() { // from class: com.transsion.lib_web.zip.loader.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.b();
        }
    });

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OkHttpClient b() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return builder.connectTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).readTimeout(30L, timeUnit).cache(null).build();
    }

    private final OkHttpClient c() {
        return (OkHttpClient) f46201b.getValue();
    }

    public final OkHttpClient d() {
        return c();
    }
}
