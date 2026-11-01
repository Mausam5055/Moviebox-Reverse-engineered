package com.google.firebase.perf.network;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import uc.f;
import vc.k;

/* JADX INFO: loaded from: classes4.dex */
public class d implements Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Callback f32320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f32321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Timer f32322c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f32323d;

    public d(Callback callback, k kVar, Timer timer, long j11) {
        this.f32320a = callback;
        this.f32321b = i.b(kVar);
        this.f32323d = j11;
        this.f32322c = timer;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        Request request = call.request();
        if (request != null) {
            HttpUrl httpUrlUrl = request.url();
            if (httpUrlUrl != null) {
                this.f32321b.q(httpUrlUrl.url().toString());
            }
            if (request.method() != null) {
                this.f32321b.f(request.method());
            }
        }
        this.f32321b.k(this.f32323d);
        this.f32321b.o(this.f32322c.getDurationMicros());
        f.d(this.f32321b);
        this.f32320a.onFailure(call, iOException);
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) throws IOException {
        FirebasePerfOkHttpClient.a(response, this.f32321b, this.f32323d, this.f32322c.getDurationMicros());
        this.f32320a.onResponse(call, response);
    }
}
