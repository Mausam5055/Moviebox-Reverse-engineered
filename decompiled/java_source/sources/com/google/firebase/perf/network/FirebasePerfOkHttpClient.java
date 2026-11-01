package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import uc.f;
import vc.k;

/* JADX INFO: loaded from: classes.dex */
public class FirebasePerfOkHttpClient {
    static void a(Response response, i iVar, long j11, long j12) throws IOException {
        Request request = response.request();
        if (request == null) {
            return;
        }
        iVar.q(request.url().url().toString());
        iVar.f(request.method());
        if (request.body() != null) {
            long jContentLength = request.body().contentLength();
            if (jContentLength != -1) {
                iVar.j(jContentLength);
            }
        }
        ResponseBody responseBodyBody = response.body();
        if (responseBodyBody != null) {
            long jContentLength2 = responseBodyBody.getContentLength();
            if (jContentLength2 != -1) {
                iVar.m(jContentLength2);
            }
            MediaType mediaTypeContentType = responseBodyBody.get$contentType();
            if (mediaTypeContentType != null) {
                iVar.l(mediaTypeContentType.getMediaType());
            }
        }
        iVar.g(response.code());
        iVar.k(j11);
        iVar.o(j12);
        iVar.a();
    }

    @Keep
    public static void enqueue(Call call, Callback callback) {
        Timer timer = new Timer();
        call.enqueue(new d(callback, k.k(), timer, timer.getMicros()));
    }

    @Keep
    public static Response execute(Call call) throws IOException {
        i iVarB = i.b(k.k());
        Timer timer = new Timer();
        long micros = timer.getMicros();
        try {
            Response responseExecute = call.execute();
            a(responseExecute, iVarB, micros, timer.getDurationMicros());
            return responseExecute;
        } catch (IOException e11) {
            Request request = call.request();
            if (request != null) {
                HttpUrl httpUrlUrl = request.url();
                if (httpUrlUrl != null) {
                    iVarB.q(httpUrlUrl.url().toString());
                }
                if (request.method() != null) {
                    iVarB.f(request.method());
                }
            }
            iVarB.k(micros);
            iVarB.o(timer.getDurationMicros());
            f.d(iVarB);
            throw e11;
        }
    }
}
