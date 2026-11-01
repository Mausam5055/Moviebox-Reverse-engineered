package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;
import uc.e;
import uc.f;
import vc.k;

/* JADX INFO: loaded from: classes4.dex */
public class FirebasePerfHttpClient {
    static Object a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler responseHandler, Timer timer, k kVar) throws IOException {
        i iVarB = i.b(kVar);
        try {
            iVarB.q(httpHost.toURI() + httpRequest.getRequestLine().getUri()).f(httpRequest.getRequestLine().getMethod());
            Long lA = f.a(httpRequest);
            if (lA != null) {
                iVarB.j(lA.longValue());
            }
            timer.reset();
            iVarB.k(timer.getMicros());
            return httpClient.execute(httpHost, httpRequest, new e(responseHandler, timer, iVarB));
        } catch (IOException e11) {
            iVarB.o(timer.getDurationMicros());
            f.d(iVarB);
            throw e11;
        }
    }

    static Object b(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler responseHandler, HttpContext httpContext, Timer timer, k kVar) throws IOException {
        i iVarB = i.b(kVar);
        try {
            iVarB.q(httpHost.toURI() + httpRequest.getRequestLine().getUri()).f(httpRequest.getRequestLine().getMethod());
            Long lA = f.a(httpRequest);
            if (lA != null) {
                iVarB.j(lA.longValue());
            }
            timer.reset();
            iVarB.k(timer.getMicros());
            return httpClient.execute(httpHost, httpRequest, new e(responseHandler, timer, iVarB), httpContext);
        } catch (IOException e11) {
            iVarB.o(timer.getDurationMicros());
            f.d(iVarB);
            throw e11;
        }
    }

    static Object c(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler responseHandler, Timer timer, k kVar) throws IOException {
        i iVarB = i.b(kVar);
        try {
            iVarB.q(httpUriRequest.getURI().toString()).f(httpUriRequest.getMethod());
            Long lA = f.a(httpUriRequest);
            if (lA != null) {
                iVarB.j(lA.longValue());
            }
            timer.reset();
            iVarB.k(timer.getMicros());
            return httpClient.execute(httpUriRequest, new e(responseHandler, timer, iVarB));
        } catch (IOException e11) {
            iVarB.o(timer.getDurationMicros());
            f.d(iVarB);
            throw e11;
        }
    }

    static Object d(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler responseHandler, HttpContext httpContext, Timer timer, k kVar) throws IOException {
        i iVarB = i.b(kVar);
        try {
            iVarB.q(httpUriRequest.getURI().toString()).f(httpUriRequest.getMethod());
            Long lA = f.a(httpUriRequest);
            if (lA != null) {
                iVarB.j(lA.longValue());
            }
            timer.reset();
            iVarB.k(timer.getMicros());
            return httpClient.execute(httpUriRequest, new e(responseHandler, timer, iVarB), httpContext);
        } catch (IOException e11) {
            iVarB.o(timer.getDurationMicros());
            f.d(iVarB);
            throw e11;
        }
    }

    static HttpResponse e(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, Timer timer, k kVar) throws IOException {
        i iVarB = i.b(kVar);
        try {
            iVarB.q(httpHost.toURI() + httpRequest.getRequestLine().getUri()).f(httpRequest.getRequestLine().getMethod());
            Long lA = f.a(httpRequest);
            if (lA != null) {
                iVarB.j(lA.longValue());
            }
            timer.reset();
            iVarB.k(timer.getMicros());
            HttpResponse httpResponseExecute = httpClient.execute(httpHost, httpRequest);
            iVarB.o(timer.getDurationMicros());
            iVarB.g(httpResponseExecute.getStatusLine().getStatusCode());
            Long lA2 = f.a(httpResponseExecute);
            if (lA2 != null) {
                iVarB.m(lA2.longValue());
            }
            String strB = f.b(httpResponseExecute);
            if (strB != null) {
                iVarB.l(strB);
            }
            iVarB.a();
            return httpResponseExecute;
        } catch (IOException e11) {
            iVarB.o(timer.getDurationMicros());
            f.d(iVarB);
            throw e11;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        return (T) a(httpClient, httpHost, httpRequest, responseHandler, new Timer(), k.k());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        return (T) b(httpClient, httpHost, httpRequest, responseHandler, httpContext, new Timer(), k.k());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler) throws IOException {
        return (T) c(httpClient, httpUriRequest, responseHandler, new Timer(), k.k());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext) throws IOException {
        return (T) d(httpClient, httpUriRequest, responseHandler, httpContext, new Timer(), k.k());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) throws IOException {
        return e(httpClient, httpHost, httpRequest, new Timer(), k.k());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException {
        return f(httpClient, httpHost, httpRequest, httpContext, new Timer(), k.k());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) throws IOException {
        return g(httpClient, httpUriRequest, new Timer(), k.k());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) throws IOException {
        return h(httpClient, httpUriRequest, httpContext, new Timer(), k.k());
    }

    static HttpResponse f(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext, Timer timer, k kVar) throws IOException {
        i iVarB = i.b(kVar);
        try {
            iVarB.q(httpHost.toURI() + httpRequest.getRequestLine().getUri()).f(httpRequest.getRequestLine().getMethod());
            Long lA = f.a(httpRequest);
            if (lA != null) {
                iVarB.j(lA.longValue());
            }
            timer.reset();
            iVarB.k(timer.getMicros());
            HttpResponse httpResponseExecute = httpClient.execute(httpHost, httpRequest, httpContext);
            iVarB.o(timer.getDurationMicros());
            iVarB.g(httpResponseExecute.getStatusLine().getStatusCode());
            Long lA2 = f.a(httpResponseExecute);
            if (lA2 != null) {
                iVarB.m(lA2.longValue());
            }
            String strB = f.b(httpResponseExecute);
            if (strB != null) {
                iVarB.l(strB);
            }
            iVarB.a();
            return httpResponseExecute;
        } catch (IOException e11) {
            iVarB.o(timer.getDurationMicros());
            f.d(iVarB);
            throw e11;
        }
    }

    static HttpResponse g(HttpClient httpClient, HttpUriRequest httpUriRequest, Timer timer, k kVar) throws IOException {
        i iVarB = i.b(kVar);
        try {
            iVarB.q(httpUriRequest.getURI().toString()).f(httpUriRequest.getMethod());
            Long lA = f.a(httpUriRequest);
            if (lA != null) {
                iVarB.j(lA.longValue());
            }
            timer.reset();
            iVarB.k(timer.getMicros());
            HttpResponse httpResponseExecute = httpClient.execute(httpUriRequest);
            iVarB.o(timer.getDurationMicros());
            iVarB.g(httpResponseExecute.getStatusLine().getStatusCode());
            Long lA2 = f.a(httpResponseExecute);
            if (lA2 != null) {
                iVarB.m(lA2.longValue());
            }
            String strB = f.b(httpResponseExecute);
            if (strB != null) {
                iVarB.l(strB);
            }
            iVarB.a();
            return httpResponseExecute;
        } catch (IOException e11) {
            iVarB.o(timer.getDurationMicros());
            f.d(iVarB);
            throw e11;
        }
    }

    static HttpResponse h(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext, Timer timer, k kVar) throws IOException {
        i iVarB = i.b(kVar);
        try {
            iVarB.q(httpUriRequest.getURI().toString()).f(httpUriRequest.getMethod());
            Long lA = f.a(httpUriRequest);
            if (lA != null) {
                iVarB.j(lA.longValue());
            }
            timer.reset();
            iVarB.k(timer.getMicros());
            HttpResponse httpResponseExecute = httpClient.execute(httpUriRequest, httpContext);
            iVarB.o(timer.getDurationMicros());
            iVarB.g(httpResponseExecute.getStatusLine().getStatusCode());
            Long lA2 = f.a(httpResponseExecute);
            if (lA2 != null) {
                iVarB.m(lA2.longValue());
            }
            String strB = f.b(httpResponseExecute);
            if (strB != null) {
                iVarB.l(strB);
            }
            iVarB.a();
            return httpResponseExecute;
        } catch (IOException e11) {
            iVarB.o(timer.getDurationMicros());
            f.d(iVarB);
            throw e11;
        }
    }
}
