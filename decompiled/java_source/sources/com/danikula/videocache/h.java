package com.danikula.videocache;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p7.b f24043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o f24044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HttpURLConnection f24045c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private InputStream f24046d;

    public h(String str) {
        this(str, new p7.a());
    }

    public h(String str, p7.b bVar) {
        this.f24043a = (p7.b) l.c(bVar);
        this.f24044b = new o(str, -2147483648L, n.d(str));
    }

    private long b(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(HttpHeaders.CONTENT_LENGTH);
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    private void c(HttpURLConnection httpURLConnection, String str) {
        for (Map.Entry entry : this.f24043a.a(str).entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
    }

    private HttpURLConnection e(long j11, int i11) throws IOException, ProxyCacheException {
        String str;
        HttpURLConnection httpURLConnection;
        boolean z10;
        String headerField = this.f24044b.f24063a;
        int i12 = 0;
        do {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Open connection ");
            if (j11 > 0) {
                str = " with offset " + j11;
            } else {
                str = "";
            }
            sb2.append(str);
            sb2.append(" to ");
            sb2.append(headerField);
            q.a(sb2.toString());
            httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(headerField).openConnection()));
            c(httpURLConnection, headerField);
            if (j11 > 0) {
                httpURLConnection.setRequestProperty("Range", "bytes=" + j11 + "-");
            }
            if (i11 > 0) {
                httpURLConnection.setConnectTimeout(i11);
                httpURLConnection.setReadTimeout(i11);
            }
            int responseCode = httpURLConnection.getResponseCode();
            z10 = responseCode == 301 || responseCode == 302 || responseCode == 303;
            if (z10) {
                headerField = httpURLConnection.getHeaderField(HttpHeaders.LOCATION);
                i12++;
                httpURLConnection.disconnect();
            }
            if (i12 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i12);
            }
        } while (z10);
        return httpURLConnection;
    }

    private long g(HttpURLConnection httpURLConnection, long j11, int i11) {
        long jB = b(httpURLConnection);
        if (i11 == 200) {
            return jB;
        }
        return i11 == 206 ? jB + j11 : this.f24044b.f24064b;
    }

    public void a() {
        HttpURLConnection httpURLConnection = this.f24045c;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException unused) {
                q.b("Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue.");
            } catch (IllegalArgumentException e11) {
                e = e11;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            } catch (NullPointerException e12) {
                e = e12;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            }
        }
    }

    public void d(long j11) throws ProxyCacheException {
        try {
            HttpURLConnection httpURLConnectionE = e(j11, -1);
            this.f24045c = httpURLConnectionE;
            String contentType = httpURLConnectionE.getContentType();
            this.f24046d = new BufferedInputStream(this.f24045c.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.f24045c;
            this.f24044b = new o(this.f24044b.f24063a, g(httpURLConnection, j11, httpURLConnection.getResponseCode()), contentType);
        } catch (IOException e11) {
            throw new ProxyCacheException("Error opening connection for " + this.f24044b.f24063a + " with offset " + j11, e11);
        }
    }

    public int f(byte[] bArr) throws ProxyCacheException {
        InputStream inputStream = this.f24046d;
        if (inputStream == null) {
            throw new ProxyCacheException("Error reading data from " + this.f24044b.f24063a + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e11) {
            throw new InterruptedProxyCacheException("Reading source " + this.f24044b.f24063a + " is interrupted", e11);
        } catch (IOException e12) {
            throw new ProxyCacheException("Error reading data from " + this.f24044b.f24063a, e12);
        }
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f24044b + "}";
    }
}
