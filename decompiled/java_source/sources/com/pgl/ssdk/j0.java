package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.integration.net.UrlKt;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f40156a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f40158c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f40159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f40160e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f40161f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HttpURLConnection f40157b = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f40162g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private byte[] f40163h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f40164i = 10000;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f40165j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f40166k = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f40167l = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Runnable f40168m = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (j0.this.c() || j0.this.f40165j >= j0.this.f40166k) {
                return;
            }
            j0.c(j0.this);
            o0.a(this);
        }
    }

    public j0(Context context) {
        this.f40158c = context;
    }

    private void a(int i11) throws ProtocolException {
        String str;
        if (i11 == 1) {
            str = "POST";
        } else if (i11 == 3) {
            str = "PUT";
        } else if (i11 == 4) {
            str = "DELETE";
        } else if (i11 != 5) {
            str = i11 != 6 ? "GET" : "TRACE";
        } else {
            str = "HEAD";
        }
        this.f40157b.setRequestMethod(str);
    }

    public static synchronized void a(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(f40156a)) {
            f40156a = str;
        }
    }

    private byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i11 = inputStream.read(bArr, 0, 1024);
            if (i11 <= 0) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i11);
        }
    }

    private void b() {
        Object obj;
        if (this.f40157b == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(f40156a)) {
                jSONObject.put("ipv6", f40156a);
            }
            if (!TextUtils.isEmpty(com.pgl.ssdk.ces.b.f())) {
                jSONObject.put(UrlKt.KEY_MINI_GAID, com.pgl.ssdk.ces.b.f());
            }
            jSONObject.put(TtmlNode.TAG_REGION, k0.a());
            Pair<Integer, String> pairA = n0.a(jSONObject.toString());
            if (pairA == null || (obj = pairA.first) == null || pairA.second == null) {
                return;
            }
            this.f40157b.addRequestProperty("cypher", String.valueOf(obj));
            this.f40157b.addRequestProperty("transfer-param", (String) pairA.second);
        } catch (Exception unused) {
        }
    }

    private void b(int i11) {
        String str;
        if (i11 != 1) {
            str = i11 != 2 ? "" : OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        } else {
            str = "application/json; charset=utf-8";
        }
        if (!str.isEmpty()) {
            this.f40157b.addRequestProperty(HttpHeaders.CONTENT_TYPE, str);
        }
        String strB = k0.b();
        if (strB != null) {
            this.f40157b.addRequestProperty("x-pangle-target-idc", strB);
        }
        b();
        try {
            String language = Locale.getDefault().getLanguage();
            if (language.equalsIgnoreCase("zh")) {
                this.f40157b.addRequestProperty("Accept-Language", Locale.getDefault().toString() + "," + language + ";q=0.9");
                return;
            }
            this.f40157b.addRequestProperty("Accept-Language", Locale.getDefault().toString() + "," + language + ";q=0.9,en-US;q=0.6,en;q=0.4");
        } catch (Throwable unused) {
        }
    }

    private void b(int i11, int i12, byte[] bArr) {
        this.f40159d = i11;
        this.f40160e = i12;
        this.f40161f = bArr;
    }

    static /* synthetic */ int c(j0 j0Var) {
        int i11 = j0Var.f40165j;
        j0Var.f40165j = i11 + 1;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:32:0x00c2 A[Catch: all -> 0x00d6, PHI: r0
  0x00c2: PHI (r0v16 java.io.InputStream) = (r0v15 java.io.InputStream), (r0v22 java.io.InputStream) binds: [B:30:0x00bf, B:27:0x00bb] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {all -> 0x00d6, blocks: (B:3:0x0004, B:5:0x0010, B:10:0x001f, B:12:0x0038, B:14:0x0040, B:15:0x0044, B:17:0x004d, B:19:0x006c, B:21:0x0089, B:23:0x008c, B:24:0x00a2, B:33:0x00c5, B:32:0x00c2, B:18:0x005e), top: B:44:0x0004 }] */
    public boolean c() {
        InputStream inputStream;
        try {
            String strA = k0.a(this.f40158c);
            if (TextUtils.isEmpty(strA)) {
                k0.b(this.f40158c);
                HttpURLConnection httpURLConnection = this.f40157b;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    this.f40157b = null;
                }
                return false;
            }
            String strConcat = strA + a();
            if (!strConcat.startsWith("https://") && !strConcat.startsWith("http://")) {
                strConcat = "https://".concat(strConcat);
            }
            URL url = new URL(strConcat);
            if (this.f40167l) {
                this.f40157b = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection(Proxy.NO_PROXY)));
            } else {
                this.f40157b = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
            }
            this.f40157b.setConnectTimeout(this.f40164i);
            this.f40157b.setReadTimeout(this.f40164i);
            a(this.f40159d);
            b(this.f40160e);
            byte[] bArr = this.f40161f;
            if (bArr != null && bArr.length > 0) {
                this.f40157b.setDoOutput(true);
                OutputStream outputStream = this.f40157b.getOutputStream();
                outputStream.write(this.f40161f);
                outputStream.flush();
                outputStream.close();
            }
            this.f40157b.connect();
            try {
                this.f40162g = this.f40157b.getResponseCode();
                inputStream = this.f40157b.getInputStream();
                try {
                    this.f40163h = a(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (Throwable unused) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                }
            } catch (Throwable unused2) {
                inputStream = null;
            }
            a(this.f40162g, this.f40163h);
            HttpURLConnection httpURLConnection2 = this.f40157b;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
                this.f40157b = null;
            }
            return true;
        } catch (Throwable unused3) {
            HttpURLConnection httpURLConnection3 = this.f40157b;
            if (httpURLConnection3 != null) {
                httpURLConnection3.disconnect();
                this.f40157b = null;
            }
            k0.b(this.f40158c);
            return false;
        }
    }

    abstract String a();

    public void a(int i11, int i12, byte[] bArr) {
        b(i11, i12, bArr);
        o0.a(this.f40168m);
    }

    abstract void a(int i11, byte[] bArr);
}
