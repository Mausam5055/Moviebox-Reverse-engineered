package com.transsion.transfer.androidasync.http;

import android.net.Uri;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.transfer.androidasync.AsyncSSLException;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f55363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f55364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Uri f55365c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Headers f55366d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f55367e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cv.a f55368f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f55369g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f55370h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f55371i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f55372j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f55373k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    long f55374l;

    class a implements y {
        a() {
        }

        public String toString() {
            j jVar = j.this;
            if (jVar.f55370h != null) {
                return String.format(Locale.ENGLISH, "%s %s %s", jVar.f55364b, j.this.p(), j.this.f55363a);
            }
            String strK = jVar.k();
            if (strK == null || strK.length() == 0) {
                strK = "/";
            }
            String encodedQuery = j.this.p().getEncodedQuery();
            if (encodedQuery != null && encodedQuery.length() != 0) {
                strK = strK + UrlUtils.QUESTION_MARK + encodedQuery;
            }
            return String.format(Locale.ENGLISH, "%s %s %s", j.this.f55364b, strK, j.this.f55363a);
        }
    }

    public j(Uri uri, String str) {
        this(uri, str, null);
    }

    public j(Uri uri, String str, Headers headers) {
        this.f55363a = "HTTP/1.1";
        this.f55366d = new Headers();
        this.f55367e = true;
        this.f55369g = 5000;
        this.f55371i = -1;
        this.f55364b = str;
        this.f55365c = uri;
        if (headers == null) {
            this.f55366d = new Headers();
        } else {
            this.f55366d = headers;
        }
        if (headers == null) {
            x(this.f55366d, uri);
        }
    }

    protected static String f() {
        String property = System.getProperty("http.agent");
        if (property != null) {
            return property;
        }
        return "Java" + System.getProperty("java.version");
    }

    private String i(String str) {
        return String.format(Locale.ENGLISH, "(%d ms) %s: %s", Long.valueOf(this.f55374l != 0 ? System.currentTimeMillis() - this.f55374l : 0L), p(), str);
    }

    public static void x(Headers headers, Uri uri) {
        if (uri != null) {
            String host = uri.getHost();
            if (uri.getPort() != -1) {
                host = host + ":" + uri.getPort();
            }
            if (host != null) {
                headers.f(HttpHeaders.HOST, host);
            }
        }
        headers.f("User-Agent", f());
        headers.f("Accept-Encoding", "gzip, deflate");
        headers.f("Connection", "keep-alive");
        headers.f("Accept", "*/*");
    }

    public j c(String str, String str2) {
        h().a(str, str2);
        return this;
    }

    public void d(String str, int i11) {
        this.f55370h = str;
        this.f55371i = i11;
    }

    public cv.a e() {
        return this.f55368f;
    }

    public boolean g() {
        return this.f55367e;
    }

    public Headers h() {
        return this.f55366d;
    }

    public String j() {
        return this.f55364b;
    }

    public String k() {
        return p().getEncodedPath();
    }

    public String l() {
        return this.f55370h;
    }

    public int m() {
        return this.f55371i;
    }

    public y n() {
        return new a();
    }

    public int o() {
        return this.f55369g;
    }

    public Uri p() {
        return this.f55365c;
    }

    public boolean q() {
        return true;
    }

    public void r(String str) {
        if (this.f55372j != null && this.f55373k <= 3) {
            i(str);
        }
    }

    public void s(String str, Exception exc) {
        String str2 = this.f55372j;
        if (str2 != null && this.f55373k <= 6) {
            Log.e(str2, i(str));
            Log.e(this.f55372j, exc.getMessage(), exc);
        }
    }

    public void t(String str) {
        if (this.f55372j != null && this.f55373k <= 4) {
            i(str);
        }
    }

    public String toString() {
        Headers headers = this.f55366d;
        return headers == null ? super.toString() : headers.g(this.f55365c.toString());
    }

    public void u(String str) {
        String str2 = this.f55372j;
        if (str2 != null && this.f55373k <= 2) {
            Log.v(str2, i(str));
        }
    }

    public void v(AsyncSSLException asyncSSLException) {
    }

    public void w(cv.a aVar) {
        this.f55368f = aVar;
    }

    public j y(int i11) {
        this.f55369g = i11;
        return this;
    }
}
