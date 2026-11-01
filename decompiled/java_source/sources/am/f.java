package am;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.transsion.http.d.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes5.dex */
public class f implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final e f708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HttpURLConnection f709b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private InputStream f710c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f711d = 480;

    public f(e eVar) {
        this.f708a = eVar;
    }

    public void a() {
        InputStream inputStream = this.f710c;
        if (inputStream != null) {
            cm.d.a(inputStream);
            this.f710c = null;
        }
        HttpURLConnection httpURLConnection = this.f709b;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    public long b() {
        int iAvailable;
        HttpURLConnection httpURLConnection = this.f709b;
        long contentLength = 0;
        try {
            if (httpURLConnection != null) {
                try {
                    contentLength = httpURLConnection.getContentLength();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                if (contentLength >= 1) {
                    return contentLength;
                }
                iAvailable = c().available();
            } else {
                iAvailable = c().available();
            }
            contentLength = iAvailable;
            return contentLength;
        } catch (Throwable unused) {
            return contentLength;
        }
    }

    public InputStream c() {
        HttpURLConnection httpURLConnection = this.f709b;
        if (httpURLConnection != null && this.f710c == null) {
            this.f710c = httpURLConnection.getResponseCode() >= 400 ? this.f709b.getErrorStream() : this.f709b.getInputStream();
        }
        return this.f710c;
    }

    public e e() {
        return this.f708a;
    }

    public int f() {
        return this.f709b != null ? this.f711d : TTAdConstant.DEEPLINK_FALLBACK_CODE;
    }

    public void g() throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new wl.c(this.f708a.n()).b().openConnection()));
        this.f709b = httpURLConnection;
        httpURLConnection.setReadTimeout(this.f708a.j());
        this.f709b.setConnectTimeout(this.f708a.a());
        HttpURLConnection httpURLConnection2 = this.f709b;
        if (httpURLConnection2 instanceof HttpsURLConnection) {
            ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(this.f708a.l());
            ((HttpsURLConnection) this.f709b).setHostnameVerifier(this.f708a.g());
        }
        h hVarH = this.f708a.h();
        this.f709b.setRequestMethod(hVarH.toString());
        if (this.f708a.f() != null) {
            for (String str : this.f708a.f().keySet()) {
                this.f709b.setRequestProperty(str, (String) this.f708a.f().get(str));
            }
        }
        if (hVarH == h.f45932b || hVarH == h.f45933c || hVarH == h.f45934d || hVarH == h.f45938h) {
            this.f709b.setRequestProperty("connection", "Keep-Alive");
            this.f709b.setRequestProperty("charset", "utf-8");
            this.f709b.setRequestProperty(HttpHeaders.CONTENT_TYPE, this.f708a.d().toString());
            long length = this.f708a.c().getBytes().length;
            if (length < 0) {
                this.f709b.setChunkedStreamingMode(262144);
            } else if (length < 2147483647L) {
                this.f709b.setFixedLengthStreamingMode((int) length);
            } else {
                this.f709b.setFixedLengthStreamingMode(length);
            }
            this.f709b.setRequestProperty(HttpHeaders.CONTENT_LENGTH, String.valueOf(length));
            this.f709b.setDoOutput(true);
            OutputStream outputStream = this.f709b.getOutputStream();
            this.f711d = 481;
            outputStream.write(this.f708a.c().getBytes());
            outputStream.flush();
            outputStream.close();
        }
        int responseCode = this.f709b.getResponseCode();
        this.f711d = responseCode;
        if (302 == responseCode || 301 == responseCode) {
            String headerField = this.f709b.getHeaderField(HttpHeaders.LOCATION);
            if (TextUtils.isEmpty(headerField)) {
                return;
            }
            a();
            this.f708a.b(headerField);
            g();
        }
    }
}
