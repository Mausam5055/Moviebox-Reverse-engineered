package com.mbridge.msdk.tracker.network.toolbox;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.foundation.same.net.MBridgeHostnameVerifier;
import com.mbridge.msdk.tracker.network.t;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public class h extends com.mbridge.msdk.tracker.network.toolbox.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SSLSocketFactory f38660a;

    static class a extends FilterInputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HttpURLConnection f38661a;

        a(HttpURLConnection httpURLConnection) {
            super(h.b(httpURLConnection));
            this.f38661a = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            this.f38661a.disconnect();
        }
    }

    public interface b {
    }

    public h() {
        this(null);
    }

    public h(b bVar) {
        this(bVar, null);
    }

    public h(b bVar, SSLSocketFactory sSLSocketFactory) {
        this.f38660a = sSLSocketFactory;
    }

    static List<com.mbridge.msdk.tracker.network.g> a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new com.mbridge.msdk.tracker.network.g(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    private HttpsURLConnection a(URL url, t<?> tVar) throws IOException {
        SSLSocketFactory sSLSocketFactory;
        HttpsURLConnection httpsURLConnectionA = a(url);
        int iQ = tVar.q();
        httpsURLConnectionA.setConnectTimeout(iQ);
        httpsURLConnectionA.setReadTimeout(iQ);
        httpsURLConnectionA.setUseCaches(false);
        httpsURLConnectionA.setDoInput(true);
        if ("https".equals(url.getProtocol()) && (sSLSocketFactory = this.f38660a) != null) {
            httpsURLConnectionA.setSSLSocketFactory(sSLSocketFactory);
        }
        return httpsURLConnectionA;
    }

    private void a(HttpURLConnection httpURLConnection, t<?> tVar) throws IOException {
        byte[] bArrB = tVar.b();
        if (bArrB != null) {
            a(httpURLConnection, tVar, bArrB);
        }
    }

    private void a(HttpURLConnection httpURLConnection, t<?> tVar, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey(HttpHeaders.CONTENT_TYPE)) {
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, tVar.c());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(a(tVar, httpURLConnection, bArr.length));
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    private static boolean a(int i11, int i12) {
        return (i11 == 4 || (100 <= i12 && i12 < 200) || i12 == 204 || i12 == 304) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream b(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    @Override // com.mbridge.msdk.tracker.network.toolbox.a
    public g a(t<?> tVar, Map<String, String> map) throws IOException {
        String strA = tVar.g() == 0 ? d.a(tVar.t(), tVar) : tVar.t();
        HashMap map2 = new HashMap();
        map2.putAll(map);
        map2.putAll(tVar.f());
        HttpsURLConnection httpsURLConnectionA = a(new URL(strA), tVar);
        try {
            for (String str : map2.keySet()) {
                httpsURLConnectionA.setRequestProperty(str, (String) map2.get(str));
            }
            b(httpsURLConnectionA, tVar);
            int responseCode = httpsURLConnectionA.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (a(tVar.g(), responseCode)) {
                return new g(responseCode, a(httpsURLConnectionA.getHeaderFields()), httpsURLConnectionA.getContentLength(), a(tVar, httpsURLConnectionA));
            }
            g gVar = new g(responseCode, a(httpsURLConnectionA.getHeaderFields()));
            httpsURLConnectionA.disconnect();
            return gVar;
        } catch (Throwable th2) {
            if (0 == 0) {
                httpsURLConnectionA.disconnect();
            }
            throw th2;
        }
    }

    protected InputStream a(t<?> tVar, HttpURLConnection httpURLConnection) {
        return new a(httpURLConnection);
    }

    protected OutputStream a(t<?> tVar, HttpURLConnection httpURLConnection, int i11) throws IOException {
        return httpURLConnection.getOutputStream();
    }

    protected HttpsURLConnection a(URL url) throws IOException {
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        httpsURLConnection.setHostnameVerifier(new MBridgeHostnameVerifier(url));
        httpsURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpsURLConnection;
    }

    void b(HttpURLConnection httpURLConnection, t<?> tVar) throws IOException {
        switch (tVar.g()) {
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                a(httpURLConnection, tVar);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                a(httpURLConnection, tVar);
                return;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                return;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                return;
            case 7:
                httpURLConnection.setRequestMethod("PATCH");
                a(httpURLConnection, tVar);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }
}
