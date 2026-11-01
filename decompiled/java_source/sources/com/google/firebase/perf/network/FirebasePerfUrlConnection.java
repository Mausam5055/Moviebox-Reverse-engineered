package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.util.j;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import uc.f;
import vc.k;

/* JADX INFO: loaded from: classes.dex */
public class FirebasePerfUrlConnection {
    static Object a(j jVar, k kVar, Timer timer) throws IOException {
        timer.reset();
        long micros = timer.getMicros();
        i iVarB = i.b(kVar);
        try {
            URLConnection uRLConnectionA = jVar.a();
            if (uRLConnectionA instanceof HttpsURLConnection) {
                return new b((HttpsURLConnection) uRLConnectionA, timer, iVarB).getContent();
            }
            return uRLConnectionA instanceof HttpURLConnection ? new a((HttpURLConnection) uRLConnectionA, timer, iVarB).getContent() : uRLConnectionA.getContent();
        } catch (IOException e11) {
            iVarB.k(micros);
            iVarB.o(timer.getDurationMicros());
            iVarB.q(jVar.toString());
            f.d(iVarB);
            throw e11;
        }
    }

    static Object b(j jVar, Class[] clsArr, k kVar, Timer timer) throws IOException {
        timer.reset();
        long micros = timer.getMicros();
        i iVarB = i.b(kVar);
        try {
            URLConnection uRLConnectionA = jVar.a();
            if (uRLConnectionA instanceof HttpsURLConnection) {
                return new b((HttpsURLConnection) uRLConnectionA, timer, iVarB).getContent(clsArr);
            }
            return uRLConnectionA instanceof HttpURLConnection ? new a((HttpURLConnection) uRLConnectionA, timer, iVarB).getContent(clsArr) : uRLConnectionA.getContent(clsArr);
        } catch (IOException e11) {
            iVarB.k(micros);
            iVarB.o(timer.getDurationMicros());
            iVarB.q(jVar.toString());
            f.d(iVarB);
            throw e11;
        }
    }

    static InputStream c(j jVar, k kVar, Timer timer) throws IOException {
        if (!k.k().u()) {
            return jVar.a().getInputStream();
        }
        timer.reset();
        long micros = timer.getMicros();
        i iVarB = i.b(kVar);
        try {
            URLConnection uRLConnectionA = jVar.a();
            if (uRLConnectionA instanceof HttpsURLConnection) {
                return new b((HttpsURLConnection) uRLConnectionA, timer, iVarB).getInputStream();
            }
            return uRLConnectionA instanceof HttpURLConnection ? new a((HttpURLConnection) uRLConnectionA, timer, iVarB).getInputStream() : uRLConnectionA.getInputStream();
        } catch (IOException e11) {
            iVarB.k(micros);
            iVarB.o(timer.getDurationMicros());
            iVarB.q(jVar.toString());
            f.d(iVarB);
            throw e11;
        }
    }

    @Keep
    public static Object getContent(URL url) throws IOException {
        return a(new j(url), k.k(), new Timer());
    }

    @Keep
    public static Object getContent(URL url, Class[] clsArr) throws IOException {
        return b(new j(url), clsArr, k.k(), new Timer());
    }

    @Keep
    public static Object instrument(Object obj) throws IOException {
        if (obj instanceof HttpsURLConnection) {
            return new b((HttpsURLConnection) obj, new Timer(), i.b(k.k()));
        }
        return obj instanceof HttpURLConnection ? new a((HttpURLConnection) obj, new Timer(), i.b(k.k())) : obj;
    }

    @Keep
    public static InputStream openStream(URL url) throws IOException {
        return c(new j(url), k.k(), new Timer());
    }
}
