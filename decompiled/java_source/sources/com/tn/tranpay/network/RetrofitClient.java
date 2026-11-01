package com.tn.tranpay.network;

import com.tn.tranpay.TranPayConfiguration;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.k0;

/* JADX INFO: loaded from: classes4.dex */
public final class RetrofitClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RetrofitClient f41655a = new RetrofitClient();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f41656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f41657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f41658d;

    static {
        f41656b = TranPayConfiguration.f41490a.u() ? "https://api.paynicorn.com" : "https://test.paynicorn.com/";
        f41657c = LazyKt.b(new Function0<OkHttpClient>() { // from class: com.tn.tranpay.network.RetrofitClient$okHttpClient$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function0
            public final OkHttpClient invoke() {
                HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, 0 == true ? 1 : 0);
                httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
                OkHttpClient.Builder builderAddNetworkInterceptor = new OkHttpClient.Builder().addNetworkInterceptor(new a()).addNetworkInterceptor(httpLoggingInterceptor);
                TimeUnit timeUnit = TimeUnit.SECONDS;
                return builderAddNetworkInterceptor.connectTimeout(30L, timeUnit).readTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).build();
            }
        });
        f41658d = LazyKt.b(new Function0<k0>() { // from class: com.tn.tranpay.network.RetrofitClient$retrofit$2
            @Override // kotlin.jvm.functions.Function0
            public final k0 invoke() {
                return new k0.b().c(RetrofitClient.f41656b).g(RetrofitClient.f41655a.c()).b(w10.a.f()).e();
            }
        });
    }

    private RetrofitClient() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OkHttpClient c() {
        return (OkHttpClient) f41657c.getValue();
    }

    public final k0 d() {
        Object value = f41658d.getValue();
        Intrinsics.g(value, "<get-retrofit>(...)");
        return (k0) value;
    }
}
