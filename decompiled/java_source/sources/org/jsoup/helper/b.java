package org.jsoup.helper;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.jsoup.Connection;
import org.jsoup.HttpStatusException;
import org.jsoup.UnsupportedMimeTypeException;
import org.jsoup.nodes.Document;
import org.jsoup.parser.e;
import org.jsoup.parser.g;

/* JADX INFO: loaded from: classes7.dex */
public class b implements Connection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Connection.b f71691a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Connection.c f71692b = new d();

    /* JADX INFO: renamed from: org.jsoup.helper.b$b, reason: collision with other inner class name */
    private static abstract class AbstractC0868b implements Connection.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        URL f71693a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Connection.Method f71694b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Map f71695c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Map f71696d;

        private AbstractC0868b() {
            this.f71695c = new LinkedHashMap();
            this.f71696d = new LinkedHashMap();
        }

        private List A(String str) {
            org.jsoup.helper.d.j(str);
            for (Map.Entry entry : this.f71695c.entrySet()) {
                if (str.equalsIgnoreCase((String) entry.getKey())) {
                    return (List) entry.getValue();
                }
            }
            return Collections.emptyList();
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0029  */
        private static boolean F(byte[] bArr) {
            int i11;
            int i12;
            if (bArr.length >= 3 && (bArr[0] & 255) == 239) {
                i11 = (((bArr[1] & 255) == 187) && ((bArr[2] & 255) == 191)) ? 3 : 0;
            }
            int length = bArr.length;
            while (i11 < length) {
                byte b11 = bArr[i11];
                if ((b11 & 128) != 0) {
                    if ((b11 & 224) == 192) {
                        i12 = i11 + 1;
                    } else if ((b11 & 240) == 224) {
                        i12 = i11 + 2;
                    } else {
                        if ((b11 & 248) != 240) {
                            return false;
                        }
                        i12 = i11 + 3;
                    }
                    while (i11 < i12) {
                        i11++;
                        if ((bArr[i11] & 192) != 128) {
                            return false;
                        }
                    }
                }
                i11++;
            }
            return true;
        }

        private Map.Entry G(String str) {
            String strA = e10.b.a(str);
            for (Map.Entry entry : this.f71695c.entrySet()) {
                if (e10.b.a((String) entry.getKey()).equals(strA)) {
                    return entry;
                }
            }
            return null;
        }

        private static String z(String str) {
            try {
                byte[] bytes = str.getBytes("ISO-8859-1");
                return !F(bytes) ? str : new String(bytes, "UTF-8");
            } catch (UnsupportedEncodingException unused) {
                return str;
            }
        }

        public boolean B(String str) {
            org.jsoup.helper.d.i(str, "Cookie name must not be empty");
            return this.f71696d.containsKey(str);
        }

        public boolean C(String str, String str2) {
            org.jsoup.helper.d.h(str);
            org.jsoup.helper.d.h(str2);
            Iterator it = E(str).iterator();
            while (it.hasNext()) {
                if (str2.equalsIgnoreCase((String) it.next())) {
                    return true;
                }
            }
            return false;
        }

        public String D(String str) {
            org.jsoup.helper.d.k(str, "Header name must not be null");
            List listA = A(str);
            if (listA.size() > 0) {
                return org.jsoup.helper.c.i(listA, ", ");
            }
            return null;
        }

        public List E(String str) {
            org.jsoup.helper.d.h(str);
            return A(str);
        }

        @Override // org.jsoup.Connection.a
        public URL f() {
            return this.f71693a;
        }

        @Override // org.jsoup.Connection.a
        public Connection.a h(String str, String str2) {
            org.jsoup.helper.d.i(str, "Cookie name must not be empty");
            org.jsoup.helper.d.k(str2, "Cookie value must not be null");
            this.f71696d.put(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.a
        public Map k() {
            return this.f71696d;
        }

        @Override // org.jsoup.Connection.a
        public Connection.Method method() {
            return this.f71694b;
        }

        @Override // org.jsoup.Connection.a
        public Connection.a n(String str) {
            org.jsoup.helper.d.i(str, "Header name must not be empty");
            Map.Entry entryG = G(str);
            if (entryG != null) {
                this.f71695c.remove(entryG.getKey());
            }
            return this;
        }

        @Override // org.jsoup.Connection.a
        public Connection.a p(URL url) {
            org.jsoup.helper.d.k(url, "URL must not be null");
            this.f71693a = url;
            return this;
        }

        @Override // org.jsoup.Connection.a
        public Connection.a q(String str, String str2) {
            org.jsoup.helper.d.i(str, "Header name must not be empty");
            n(str);
            y(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.a
        public Connection.a r(Connection.Method method) {
            org.jsoup.helper.d.k(method, "Method must not be null");
            this.f71694b = method;
            return this;
        }

        @Override // org.jsoup.Connection.a
        public boolean s(String str) {
            org.jsoup.helper.d.i(str, "Header name must not be empty");
            return A(str).size() != 0;
        }

        @Override // org.jsoup.Connection.a
        public Map u() {
            return this.f71695c;
        }

        public Connection.a y(String str, String str2) {
            org.jsoup.helper.d.h(str);
            if (str2 == null) {
                str2 = "";
            }
            List listE = E(str);
            if (listE.isEmpty()) {
                listE = new ArrayList();
                this.f71695c.put(str, listE);
            }
            listE.add(z(str2));
            return this;
        }
    }

    public static class c extends AbstractC0868b implements Connection.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Proxy f71697e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f71698f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f71699g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f71700h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Collection f71701i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f71702j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f71703k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f71704l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private e f71705m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f71706n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f71707o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private String f71708p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private SSLSocketFactory f71709q;

        c() {
            super();
            this.f71702j = null;
            this.f71703k = false;
            this.f71704l = false;
            this.f71706n = false;
            this.f71707o = true;
            this.f71708p = "UTF-8";
            this.f71698f = 30000;
            this.f71699g = 1048576;
            this.f71700h = true;
            this.f71701i = new ArrayList();
            this.f71694b = Connection.Method.GET;
            y("Accept-Encoding", "gzip");
            y("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36");
            this.f71705m = e.a();
        }

        @Override // org.jsoup.helper.b.AbstractC0868b
        public /* bridge */ /* synthetic */ List E(String str) {
            return super.E(str);
        }

        @Override // org.jsoup.Connection.b
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public c o(e eVar) {
            this.f71705m = eVar;
            this.f71706n = true;
            return this;
        }

        @Override // org.jsoup.Connection.b
        public Connection.b a(boolean z10) {
            this.f71704l = z10;
            return this;
        }

        @Override // org.jsoup.Connection.b
        public boolean b() {
            return this.f71703k;
        }

        @Override // org.jsoup.Connection.b
        public String c() {
            return this.f71708p;
        }

        @Override // org.jsoup.Connection.b
        public Connection.b d(String str) {
            this.f71702j = str;
            return this;
        }

        @Override // org.jsoup.Connection.b
        public boolean e() {
            return this.f71707o;
        }

        @Override // org.jsoup.helper.b.AbstractC0868b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ URL f() {
            return super.f();
        }

        @Override // org.jsoup.Connection.b
        public SSLSocketFactory g() {
            return this.f71709q;
        }

        @Override // org.jsoup.Connection.b
        public Proxy i() {
            return this.f71697e;
        }

        @Override // org.jsoup.Connection.b
        public Collection j() {
            return this.f71701i;
        }

        @Override // org.jsoup.helper.b.AbstractC0868b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Map k() {
            return super.k();
        }

        @Override // org.jsoup.Connection.b
        public boolean l() {
            return this.f71700h;
        }

        @Override // org.jsoup.helper.b.AbstractC0868b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.Method method() {
            return super.method();
        }

        @Override // org.jsoup.helper.b.AbstractC0868b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ boolean s(String str) {
            return super.s(str);
        }

        @Override // org.jsoup.Connection.b
        public boolean t() {
            return this.f71704l;
        }

        @Override // org.jsoup.Connection.b
        public int timeout() {
            return this.f71698f;
        }

        @Override // org.jsoup.helper.b.AbstractC0868b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Map u() {
            return super.u();
        }

        @Override // org.jsoup.Connection.b
        public String v() {
            return this.f71702j;
        }

        @Override // org.jsoup.Connection.b
        public int w() {
            return this.f71699g;
        }

        @Override // org.jsoup.Connection.b
        public e x() {
            return this.f71705m;
        }
    }

    public static class d extends AbstractC0868b implements Connection.c {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static SSLSocketFactory f71710o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private static final Pattern f71711p = Pattern.compile("(application|text)/\\w*\\+?xml.*");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f71712e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f71713f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ByteBuffer f71714g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private InputStream f71715h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f71716i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f71717j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f71718k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f71719l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f71720m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private Connection.b f71721n;

        class a implements HostnameVerifier {
            a() {
            }

            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str, SSLSession sSLSession) {
                return true;
            }
        }

        /* JADX INFO: renamed from: org.jsoup.helper.b$d$b, reason: collision with other inner class name */
        class C0869b implements X509TrustManager {
            C0869b() {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }
        }

        d() {
            super();
            this.f71718k = false;
            this.f71719l = false;
            this.f71720m = 0;
        }

        private d(d dVar) throws IOException {
            super();
            this.f71718k = false;
            this.f71719l = false;
            this.f71720m = 0;
            if (dVar != null) {
                int i11 = dVar.f71720m + 1;
                this.f71720m = i11;
                if (i11 >= 20) {
                    throw new IOException(String.format("Too many redirects occurred trying to load URL %s", dVar.f()));
                }
            }
        }

        private static HttpURLConnection I(Connection.b bVar) throws ProtocolException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) (bVar.i() == null ? (URLConnection) FirebasePerfUrlConnection.instrument(bVar.f().openConnection()) : (URLConnection) FirebasePerfUrlConnection.instrument(bVar.f().openConnection(bVar.i())));
            httpURLConnection.setRequestMethod(bVar.method().name());
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(bVar.timeout());
            httpURLConnection.setReadTimeout(bVar.timeout() / 2);
            if (httpURLConnection instanceof HttpsURLConnection) {
                SSLSocketFactory sSLSocketFactoryG = bVar.g();
                if (sSLSocketFactoryG != null) {
                    ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactoryG);
                } else if (!bVar.e()) {
                    O();
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
                    httpsURLConnection.setSSLSocketFactory(f71710o);
                    httpsURLConnection.setHostnameVerifier(M());
                }
            }
            if (bVar.method().hasBody()) {
                httpURLConnection.setDoOutput(true);
            }
            if (bVar.k().size() > 0) {
                httpURLConnection.addRequestProperty("Cookie", N(bVar));
            }
            for (Map.Entry entry : bVar.u().entrySet()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    httpURLConnection.addRequestProperty((String) entry.getKey(), (String) it.next());
                }
            }
            return httpURLConnection;
        }

        private static LinkedHashMap J(HttpURLConnection httpURLConnection) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int i11 = 0;
            while (true) {
                String headerFieldKey = httpURLConnection.getHeaderFieldKey(i11);
                String headerField = httpURLConnection.getHeaderField(i11);
                if (headerFieldKey == null && headerField == null) {
                    return linkedHashMap;
                }
                i11++;
                if (headerFieldKey != null && headerField != null) {
                    if (linkedHashMap.containsKey(headerFieldKey)) {
                        ((List) linkedHashMap.get(headerFieldKey)).add(headerField);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(headerField);
                        linkedHashMap.put(headerFieldKey, arrayList);
                    }
                }
            }
        }

        static d K(Connection.b bVar) {
            return L(bVar, null);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x0082 A[Catch: IOException -> 0x008a, TryCatch #0 {IOException -> 0x008a, blocks: (B:24:0x0079, B:26:0x0082, B:29:0x008d, B:31:0x00a1, B:35:0x00ab, B:36:0x00bf, B:38:0x00c5, B:40:0x00cd, B:42:0x00d6, B:43:0x00da, B:44:0x00f3, B:46:0x00f9, B:47:0x010f, B:55:0x0122, B:57:0x0128, B:59:0x012e, B:61:0x0136, B:64:0x0143, B:65:0x0152, B:67:0x0155, B:69:0x0161, B:71:0x0165, B:73:0x016e, B:74:0x0175, B:76:0x0183, B:78:0x018b, B:80:0x0193, B:82:0x019c, B:84:0x01a6, B:88:0x01c6, B:85:0x01b0, B:87:0x01b8, B:81:0x0198, B:89:0x01df, B:53:0x011c, B:92:0x01e8, B:93:0x01f7), top: B:96:0x0079 }] */
        /* JADX WARN: Code duplicated, block: B:89:0x01df A[Catch: IOException -> 0x008a, TRY_LEAVE, TryCatch #0 {IOException -> 0x008a, blocks: (B:24:0x0079, B:26:0x0082, B:29:0x008d, B:31:0x00a1, B:35:0x00ab, B:36:0x00bf, B:38:0x00c5, B:40:0x00cd, B:42:0x00d6, B:43:0x00da, B:44:0x00f3, B:46:0x00f9, B:47:0x010f, B:55:0x0122, B:57:0x0128, B:59:0x012e, B:61:0x0136, B:64:0x0143, B:65:0x0152, B:67:0x0155, B:69:0x0161, B:71:0x0165, B:73:0x016e, B:74:0x0175, B:76:0x0183, B:78:0x018b, B:80:0x0193, B:82:0x019c, B:84:0x01a6, B:88:0x01c6, B:85:0x01b0, B:87:0x01b8, B:81:0x0198, B:89:0x01df, B:53:0x011c, B:92:0x01e8, B:93:0x01f7), top: B:96:0x0079 }] */
        static d L(Connection.b bVar, d dVar) throws IOException {
            String strS;
            HttpURLConnection httpURLConnectionI;
            int responseCode;
            d dVar2;
            String strH;
            org.jsoup.helper.d.k(bVar, "Request must not be null");
            String protocol = bVar.f().getProtocol();
            if (!protocol.equals("http") && !protocol.equals("https")) {
                throw new MalformedURLException("Only http & https protocols supported");
            }
            boolean zHasBody = bVar.method().hasBody();
            boolean z10 = bVar.v() != null;
            if (!zHasBody) {
                org.jsoup.helper.d.c(z10, "Cannot set a request body for HTTP method " + bVar.method());
            }
            try {
                if (bVar.j().size() <= 0 || (zHasBody && !z10)) {
                    strS = zHasBody ? S(bVar) : null;
                    long jNanoTime = System.nanoTime();
                    httpURLConnectionI = I(bVar);
                    httpURLConnectionI.connect();
                    if (httpURLConnectionI.getDoOutput()) {
                        U(bVar, httpURLConnectionI.getOutputStream(), strS);
                    }
                    responseCode = httpURLConnectionI.getResponseCode();
                    dVar2 = new d(dVar);
                    dVar2.T(httpURLConnectionI, dVar);
                    dVar2.f71721n = bVar;
                    if (!dVar2.s(HttpHeaders.LOCATION) && bVar.l()) {
                        if (responseCode != 307) {
                            bVar.r(Connection.Method.GET);
                            bVar.j().clear();
                            bVar.d(null);
                            bVar.n(HttpHeaders.CONTENT_TYPE);
                        }
                        String strD = dVar2.D(HttpHeaders.LOCATION);
                        if (strD != null && strD.startsWith("http:/") && strD.charAt(6) != '/') {
                            strD = strD.substring(6);
                        }
                        bVar.p(b.f(org.jsoup.helper.c.n(bVar.f(), strD)));
                        for (Map.Entry entry : dVar2.f71696d.entrySet()) {
                            bVar.h((String) entry.getKey(), (String) entry.getValue());
                        }
                        return L(bVar, dVar2);
                    }
                    if ((responseCode >= 200 || responseCode >= 400) && !bVar.b()) {
                        throw new HttpStatusException("HTTP error fetching URL", responseCode, bVar.f().toString());
                    }
                    strH = dVar2.H();
                    if (strH != null && !bVar.t() && !strH.startsWith("text/") && !f71711p.matcher(strH).matches()) {
                        throw new UnsupportedMimeTypeException("Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml", strH, bVar.f().toString());
                    }
                    if (strH != null && f71711p.matcher(strH).matches() && (bVar instanceof c) && !((c) bVar).f71706n) {
                        bVar.o(e.g());
                    }
                    dVar2.f71716i = org.jsoup.helper.a.c(dVar2.f71717j);
                    if (httpURLConnectionI.getContentLength() != 0 || bVar.method() == Connection.Method.HEAD) {
                        dVar2.f71714g = org.jsoup.helper.a.b();
                    } else {
                        dVar2.f71715h = null;
                        dVar2.f71715h = httpURLConnectionI.getErrorStream() != null ? httpURLConnectionI.getErrorStream() : httpURLConnectionI.getInputStream();
                        if (dVar2.C(HttpHeaders.CONTENT_ENCODING, "gzip")) {
                            dVar2.f71715h = new GZIPInputStream(dVar2.f71715h);
                        } else if (dVar2.C(HttpHeaders.CONTENT_ENCODING, "deflate")) {
                            dVar2.f71715h = new InflaterInputStream(dVar2.f71715h, new Inflater(true));
                        }
                        dVar2.f71715h = e10.a.k(dVar2.f71715h, 32768, bVar.w()).i(jNanoTime, bVar.timeout());
                    }
                    dVar2.f71718k = true;
                    return dVar2;
                }
                R(bVar);
                httpURLConnectionI.connect();
                if (httpURLConnectionI.getDoOutput()) {
                    U(bVar, httpURLConnectionI.getOutputStream(), strS);
                }
                responseCode = httpURLConnectionI.getResponseCode();
                dVar2 = new d(dVar);
                dVar2.T(httpURLConnectionI, dVar);
                dVar2.f71721n = bVar;
                if (!dVar2.s(HttpHeaders.LOCATION)) {
                }
                if (responseCode >= 200) {
                    throw new HttpStatusException("HTTP error fetching URL", responseCode, bVar.f().toString());
                }
                throw new HttpStatusException("HTTP error fetching URL", responseCode, bVar.f().toString());
                strH = dVar2.H();
                if (strH != null) {
                    throw new UnsupportedMimeTypeException("Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml", strH, bVar.f().toString());
                }
                if (strH != null) {
                    bVar.o(e.g());
                }
                dVar2.f71716i = org.jsoup.helper.a.c(dVar2.f71717j);
                if (httpURLConnectionI.getContentLength() != 0) {
                    dVar2.f71714g = org.jsoup.helper.a.b();
                } else {
                    dVar2.f71714g = org.jsoup.helper.a.b();
                }
                dVar2.f71718k = true;
                return dVar2;
            } catch (IOException e11) {
                httpURLConnectionI.disconnect();
                throw e11;
            }
            long jNanoTime2 = System.nanoTime();
            httpURLConnectionI = I(bVar);
        }

        private static HostnameVerifier M() {
            return new a();
        }

        private static String N(Connection.b bVar) {
            StringBuilder sbO = org.jsoup.helper.c.o();
            boolean z10 = true;
            for (Map.Entry entry : bVar.k().entrySet()) {
                if (z10) {
                    z10 = false;
                } else {
                    sbO.append("; ");
                }
                sbO.append((String) entry.getKey());
                sbO.append('=');
                sbO.append((String) entry.getValue());
            }
            return sbO.toString();
        }

        private static synchronized void O() {
            if (f71710o == null) {
                TrustManager[] trustManagerArr = {new C0869b()};
                try {
                    SSLContext sSLContext = SSLContext.getInstance("SSL");
                    sSLContext.init(null, trustManagerArr, new SecureRandom());
                    f71710o = sSLContext.getSocketFactory();
                } catch (KeyManagementException | NoSuchAlgorithmException unused) {
                    throw new IOException("Can't create unsecure trust manager");
                }
            }
        }

        private void Q() {
            InputStream inputStream = this.f71715h;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                } finally {
                    this.f71715h = null;
                }
            }
        }

        private static void R(Connection.b bVar) {
            URL urlF = bVar.f();
            StringBuilder sbO = org.jsoup.helper.c.o();
            sbO.append(urlF.getProtocol());
            sbO.append("://");
            sbO.append(urlF.getAuthority());
            sbO.append(urlF.getPath());
            sbO.append(UrlUtils.QUESTION_MARK);
            if (urlF.getQuery() != null) {
                sbO.append(urlF.getQuery());
            }
            Iterator it = bVar.j().iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
            bVar.p(new URL(sbO.toString()));
            bVar.j().clear();
        }

        private static String S(Connection.b bVar) {
            if (!bVar.s(HttpHeaders.CONTENT_TYPE)) {
                if (b.h(bVar)) {
                    String strD = org.jsoup.helper.a.d();
                    bVar.q(HttpHeaders.CONTENT_TYPE, "multipart/form-data; boundary=" + strD);
                    return strD;
                }
                bVar.q(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded; charset=" + bVar.c());
            }
            return null;
        }

        private void T(HttpURLConnection httpURLConnection, Connection.c cVar) {
            this.f71694b = Connection.Method.valueOf(httpURLConnection.getRequestMethod());
            this.f71693a = httpURLConnection.getURL();
            this.f71712e = httpURLConnection.getResponseCode();
            this.f71713f = httpURLConnection.getResponseMessage();
            this.f71717j = httpURLConnection.getContentType();
            P(J(httpURLConnection));
            if (cVar != null) {
                for (Map.Entry entry : cVar.k().entrySet()) {
                    if (!B((String) entry.getKey())) {
                        h((String) entry.getKey(), (String) entry.getValue());
                    }
                }
            }
        }

        private static void U(Connection.b bVar, OutputStream outputStream, String str) throws IOException {
            Collection collectionJ = bVar.j();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, bVar.c()));
            if (str != null) {
                Iterator it = collectionJ.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(it.next());
                    bufferedWriter.write("--");
                    bufferedWriter.write(str);
                    bufferedWriter.write("\r\n");
                    bufferedWriter.write("Content-Disposition: form-data; name=\"");
                    throw null;
                }
                bufferedWriter.write("--");
                bufferedWriter.write(str);
                bufferedWriter.write("--");
            } else if (bVar.v() != null) {
                bufferedWriter.write(bVar.v());
            } else {
                Iterator it2 = collectionJ.iterator();
                if (it2.hasNext()) {
                    android.support.v4.media.session.c.a(it2.next());
                    throw null;
                }
            }
            bufferedWriter.close();
        }

        @Override // org.jsoup.helper.b.AbstractC0868b
        public /* bridge */ /* synthetic */ boolean B(String str) {
            return super.B(str);
        }

        @Override // org.jsoup.helper.b.AbstractC0868b
        public /* bridge */ /* synthetic */ boolean C(String str, String str2) {
            return super.C(str, str2);
        }

        @Override // org.jsoup.helper.b.AbstractC0868b
        public /* bridge */ /* synthetic */ String D(String str) {
            return super.D(str);
        }

        @Override // org.jsoup.helper.b.AbstractC0868b
        public /* bridge */ /* synthetic */ List E(String str) {
            return super.E(str);
        }

        public String H() {
            return this.f71717j;
        }

        void P(Map map) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str != null) {
                    List<String> list = (List) entry.getValue();
                    if (str.equalsIgnoreCase("Set-Cookie")) {
                        for (String str2 : list) {
                            if (str2 != null) {
                                g gVar = new g(str2);
                                String strTrim = gVar.b(UrlUtils.EQUAL_MARK).trim();
                                String strTrim2 = gVar.g(";").trim();
                                if (strTrim.length() > 0) {
                                    h(strTrim, strTrim2);
                                }
                            }
                        }
                    }
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        y(str, (String) it.next());
                    }
                }
            }
        }

        @Override // org.jsoup.helper.b.AbstractC0868b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ URL f() {
            return super.f();
        }

        @Override // org.jsoup.helper.b.AbstractC0868b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Map k() {
            return super.k();
        }

        @Override // org.jsoup.Connection.c
        public Document m() throws IOException {
            org.jsoup.helper.d.e(this.f71718k, "Request must be executed (with .execute(), .get(), or .post() before parsing response");
            if (this.f71714g != null) {
                this.f71715h = new ByteArrayInputStream(this.f71714g.array());
                this.f71719l = false;
            }
            org.jsoup.helper.d.c(this.f71719l, "Input stream already read and parsed, cannot re-read.");
            Document documentE = org.jsoup.helper.a.e(this.f71715h, this.f71716i, this.f71693a.toExternalForm(), this.f71721n.x());
            this.f71716i = documentE.g1().a().name();
            this.f71719l = true;
            Q();
            return documentE;
        }

        @Override // org.jsoup.helper.b.AbstractC0868b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ boolean s(String str) {
            return super.s(str);
        }
    }

    private b() {
    }

    public static Connection d(String str) {
        b bVar = new b();
        bVar.b(str);
        return bVar;
    }

    private static String e(String str) {
        try {
            return f(new URL(str)).toExternalForm();
        } catch (Exception unused) {
            return str;
        }
    }

    static URL f(URL url) {
        try {
            return new URL(new URI(url.toExternalForm().replaceAll(" ", "%20")).toASCIIString());
        } catch (Exception unused) {
            return url;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean h(Connection.b bVar) {
        Iterator it = bVar.j().iterator();
        if (!it.hasNext()) {
            return false;
        }
        android.support.v4.media.session.c.a(it.next());
        throw null;
    }

    @Override // org.jsoup.Connection
    public Connection a(boolean z10) {
        this.f71691a.a(z10);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection b(String str) {
        org.jsoup.helper.d.i(str, "Must supply a valid URL");
        try {
            this.f71691a.p(new URL(e(str)));
            return this;
        } catch (MalformedURLException e11) {
            throw new IllegalArgumentException("Malformed URL: " + str, e11);
        }
    }

    public Connection.c g() {
        d dVarK = d.K(this.f71691a);
        this.f71692b = dVarK;
        return dVarK;
    }

    @Override // org.jsoup.Connection
    public Document get() {
        this.f71691a.r(Connection.Method.GET);
        g();
        return this.f71692b.m();
    }
}
