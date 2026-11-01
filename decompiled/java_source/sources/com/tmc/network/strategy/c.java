package com.tmc.network.strategy;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.tmc.network.HttpClient;
import com.tmc.network.HttpRequestor;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f40816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f40817b;

    public static final class a implements Callback {
        a() {
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException e11) {
            Intrinsics.h(call, "call");
            Intrinsics.h(e11, "e");
            gg.b.f63567a.c("pre connect onFailure");
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            gg.b.f63567a.c("pre connect success");
        }
    }

    public c(String url) {
        Intrinsics.h(url, "url");
        this.f40816a = url;
        this.f40817b = new a();
    }

    public final void a() {
        HttpClient httpClient;
        OkHttpClient okHttpClient;
        Call callNewCall;
        try {
            Request requestBuild = new Request.Builder().url(this.f40816a).header("isPre", "true").head().build();
            HttpRequestor companion = HttpRequestor.INSTANCE.getInstance();
            if (companion != null && (httpClient = companion.getHttpClient()) != null && (okHttpClient = httpClient.getOkHttpClient()) != null && (callNewCall = okHttpClient.newCall(requestBuild)) != null) {
                FirebasePerfOkHttpClient.enqueue(callNewCall, this.f40817b);
            }
            gg.b.f63567a.c(Intrinsics.q("pre connect start url = ", this.f40816a));
        } catch (Throwable th2) {
            gg.b.f63567a.e(th2);
        }
    }
}
