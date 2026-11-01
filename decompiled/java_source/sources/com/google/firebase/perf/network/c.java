package com.google.firebase.perf.network;

import android.os.Build;
import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.Map;
import uc.f;

/* JADX INFO: loaded from: classes4.dex */
class c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final sc.a f32314f = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HttpURLConnection f32315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f32316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f32317c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f32318d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Timer f32319e;

    public c(HttpURLConnection httpURLConnection, Timer timer, i iVar) {
        this.f32315a = httpURLConnection;
        this.f32316b = iVar;
        this.f32319e = timer;
        iVar.q(httpURLConnection.getURL().toString());
    }

    private void a0() {
        if (this.f32317c == -1) {
            this.f32319e.reset();
            long micros = this.f32319e.getMicros();
            this.f32317c = micros;
            this.f32316b.k(micros);
        }
        String strF = F();
        if (strF != null) {
            this.f32316b.f(strF);
        } else if (o()) {
            this.f32316b.f("POST");
        } else {
            this.f32316b.f("GET");
        }
    }

    public boolean A() {
        return this.f32315a.getInstanceFollowRedirects();
    }

    public long B() {
        a0();
        return this.f32315a.getLastModified();
    }

    public OutputStream C() throws IOException {
        try {
            OutputStream outputStream = this.f32315a.getOutputStream();
            return outputStream != null ? new uc.b(outputStream, this.f32316b, this.f32319e) : outputStream;
        } catch (IOException e11) {
            this.f32316b.o(this.f32319e.getDurationMicros());
            f.d(this.f32316b);
            throw e11;
        }
    }

    public Permission D() throws IOException {
        try {
            return this.f32315a.getPermission();
        } catch (IOException e11) {
            this.f32316b.o(this.f32319e.getDurationMicros());
            f.d(this.f32316b);
            throw e11;
        }
    }

    public int E() {
        return this.f32315a.getReadTimeout();
    }

    public String F() {
        return this.f32315a.getRequestMethod();
    }

    public Map G() {
        return this.f32315a.getRequestProperties();
    }

    public String H(String str) {
        return this.f32315a.getRequestProperty(str);
    }

    public int I() throws IOException {
        a0();
        if (this.f32318d == -1) {
            long durationMicros = this.f32319e.getDurationMicros();
            this.f32318d = durationMicros;
            this.f32316b.p(durationMicros);
        }
        try {
            int responseCode = this.f32315a.getResponseCode();
            this.f32316b.g(responseCode);
            return responseCode;
        } catch (IOException e11) {
            this.f32316b.o(this.f32319e.getDurationMicros());
            f.d(this.f32316b);
            throw e11;
        }
    }

    public String J() throws IOException {
        a0();
        if (this.f32318d == -1) {
            long durationMicros = this.f32319e.getDurationMicros();
            this.f32318d = durationMicros;
            this.f32316b.p(durationMicros);
        }
        try {
            String responseMessage = this.f32315a.getResponseMessage();
            this.f32316b.g(this.f32315a.getResponseCode());
            return responseMessage;
        } catch (IOException e11) {
            this.f32316b.o(this.f32319e.getDurationMicros());
            f.d(this.f32316b);
            throw e11;
        }
    }

    public URL K() {
        return this.f32315a.getURL();
    }

    public boolean L() {
        return this.f32315a.getUseCaches();
    }

    public void M(boolean z10) {
        this.f32315a.setAllowUserInteraction(z10);
    }

    public void N(int i11) {
        this.f32315a.setChunkedStreamingMode(i11);
    }

    public void O(int i11) {
        this.f32315a.setConnectTimeout(i11);
    }

    public void P(boolean z10) {
        this.f32315a.setDefaultUseCaches(z10);
    }

    public void Q(boolean z10) {
        this.f32315a.setDoInput(z10);
    }

    public void R(boolean z10) {
        this.f32315a.setDoOutput(z10);
    }

    public void S(int i11) {
        this.f32315a.setFixedLengthStreamingMode(i11);
    }

    public void T(long j11) {
        this.f32315a.setFixedLengthStreamingMode(j11);
    }

    public void U(long j11) {
        this.f32315a.setIfModifiedSince(j11);
    }

    public void V(boolean z10) {
        this.f32315a.setInstanceFollowRedirects(z10);
    }

    public void W(int i11) {
        this.f32315a.setReadTimeout(i11);
    }

    public void X(String str) {
        this.f32315a.setRequestMethod(str);
    }

    public void Y(String str, String str2) {
        if ("User-Agent".equalsIgnoreCase(str)) {
            this.f32316b.r(str2);
        }
        this.f32315a.setRequestProperty(str, str2);
    }

    public void Z(boolean z10) {
        this.f32315a.setUseCaches(z10);
    }

    public void a(String str, String str2) {
        this.f32315a.addRequestProperty(str, str2);
    }

    public void b() {
        if (this.f32317c == -1) {
            this.f32319e.reset();
            long micros = this.f32319e.getMicros();
            this.f32317c = micros;
            this.f32316b.k(micros);
        }
        try {
            this.f32315a.connect();
        } catch (IOException e11) {
            this.f32316b.o(this.f32319e.getDurationMicros());
            f.d(this.f32316b);
            throw e11;
        }
    }

    public boolean b0() {
        return this.f32315a.usingProxy();
    }

    public void c() {
        this.f32316b.o(this.f32319e.getDurationMicros());
        this.f32316b.a();
        this.f32315a.disconnect();
    }

    public boolean d() {
        return this.f32315a.getAllowUserInteraction();
    }

    public int e() {
        return this.f32315a.getConnectTimeout();
    }

    public boolean equals(Object obj) {
        return this.f32315a.equals(obj);
    }

    public Object f() throws IOException {
        a0();
        this.f32316b.g(this.f32315a.getResponseCode());
        try {
            Object content = this.f32315a.getContent();
            if (content instanceof InputStream) {
                this.f32316b.l(this.f32315a.getContentType());
                return new uc.a((InputStream) content, this.f32316b, this.f32319e);
            }
            this.f32316b.l(this.f32315a.getContentType());
            this.f32316b.m(this.f32315a.getContentLength());
            this.f32316b.o(this.f32319e.getDurationMicros());
            this.f32316b.a();
            return content;
        } catch (IOException e11) {
            this.f32316b.o(this.f32319e.getDurationMicros());
            f.d(this.f32316b);
            throw e11;
        }
    }

    public Object g(Class[] clsArr) throws IOException {
        a0();
        this.f32316b.g(this.f32315a.getResponseCode());
        try {
            Object content = this.f32315a.getContent(clsArr);
            if (content instanceof InputStream) {
                this.f32316b.l(this.f32315a.getContentType());
                return new uc.a((InputStream) content, this.f32316b, this.f32319e);
            }
            this.f32316b.l(this.f32315a.getContentType());
            this.f32316b.m(this.f32315a.getContentLength());
            this.f32316b.o(this.f32319e.getDurationMicros());
            this.f32316b.a();
            return content;
        } catch (IOException e11) {
            this.f32316b.o(this.f32319e.getDurationMicros());
            f.d(this.f32316b);
            throw e11;
        }
    }

    public String h() {
        a0();
        return this.f32315a.getContentEncoding();
    }

    public int hashCode() {
        return this.f32315a.hashCode();
    }

    public int i() {
        a0();
        return this.f32315a.getContentLength();
    }

    public long j() {
        a0();
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f32315a.getContentLengthLong();
        }
        return 0L;
    }

    public String k() {
        a0();
        return this.f32315a.getContentType();
    }

    public long l() {
        a0();
        return this.f32315a.getDate();
    }

    public boolean m() {
        return this.f32315a.getDefaultUseCaches();
    }

    public boolean n() {
        return this.f32315a.getDoInput();
    }

    public boolean o() {
        return this.f32315a.getDoOutput();
    }

    public InputStream p() {
        a0();
        try {
            this.f32316b.g(this.f32315a.getResponseCode());
        } catch (IOException unused) {
            f32314f.a("IOException thrown trying to obtain the response code");
        }
        InputStream errorStream = this.f32315a.getErrorStream();
        return errorStream != null ? new uc.a(errorStream, this.f32316b, this.f32319e) : errorStream;
    }

    public long q() {
        a0();
        return this.f32315a.getExpiration();
    }

    public String r(int i11) {
        a0();
        return this.f32315a.getHeaderField(i11);
    }

    public String s(String str) {
        a0();
        return this.f32315a.getHeaderField(str);
    }

    public long t(String str, long j11) {
        a0();
        return this.f32315a.getHeaderFieldDate(str, j11);
    }

    public String toString() {
        return this.f32315a.toString();
    }

    public int u(String str, int i11) {
        a0();
        return this.f32315a.getHeaderFieldInt(str, i11);
    }

    public String v(int i11) {
        a0();
        return this.f32315a.getHeaderFieldKey(i11);
    }

    public long w(String str, long j11) {
        a0();
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f32315a.getHeaderFieldLong(str, j11);
        }
        return 0L;
    }

    public Map x() {
        a0();
        return this.f32315a.getHeaderFields();
    }

    public long y() {
        return this.f32315a.getIfModifiedSince();
    }

    public InputStream z() throws IOException {
        a0();
        this.f32316b.g(this.f32315a.getResponseCode());
        this.f32316b.l(this.f32315a.getContentType());
        try {
            InputStream inputStream = this.f32315a.getInputStream();
            return inputStream != null ? new uc.a(inputStream, this.f32316b, this.f32319e) : inputStream;
        } catch (IOException e11) {
            this.f32316b.o(this.f32319e.getDurationMicros());
            f.d(this.f32316b);
            throw e11;
        }
    }
}
