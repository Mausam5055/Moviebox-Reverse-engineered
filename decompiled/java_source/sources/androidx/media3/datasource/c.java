package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.common.base.n;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Sets;
import com.google.common.collect.n2;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import w1.h;
import w1.i;

/* JADX INFO: loaded from: classes2.dex */
public class c extends w1.a implements HttpDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f10732e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f10733f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f10734g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f10735h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f10736i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final HttpDataSource.b f10737j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final HttpDataSource.b f10738k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final n f10739l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f10740m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private h f10741n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private HttpURLConnection f10742o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private InputStream f10743p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f10744q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f10745r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f10746s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f10747t;

    public static final class b implements HttpDataSource.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private w1.n f10749b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private n f10750c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f10751d;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f10754g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f10755h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f10756i;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HttpDataSource.b f10748a = new HttpDataSource.b();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f10752e = 8000;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f10753f = 8000;

        @Override // androidx.media3.datasource.a.InterfaceC0091a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public c createDataSource() {
            c cVar = new c(this.f10751d, this.f10752e, this.f10753f, this.f10754g, this.f10755h, this.f10748a, this.f10750c, this.f10756i);
            w1.n nVar = this.f10749b;
            if (nVar != null) {
                cVar.c(nVar);
            }
            return cVar;
        }

        @Override // androidx.media3.datasource.HttpDataSource.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public b a(Map map) {
            this.f10748a.a(map);
            return this;
        }

        public b d(String str) {
            this.f10751d = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: androidx.media3.datasource.c$c, reason: collision with other inner class name */
    static class C0092c extends n2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map f10757a;

        public C0092c(Map map) {
            this.f10757a = map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean o(Map.Entry entry) {
            return entry.getKey() != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean p(String str) {
            return str != null;
        }

        @Override // com.google.common.collect.n2, java.util.Map
        public boolean containsKey(Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override // com.google.common.collect.n2, java.util.Map
        public boolean containsValue(Object obj) {
            return super.standardContainsValue(obj);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.q2
        /* JADX INFO: renamed from: delegate */
        public Map l() {
            return this.f10757a;
        }

        @Override // com.google.common.collect.n2, java.util.Map
        public Set entrySet() {
            return Sets.b(super.entrySet(), new n() { // from class: androidx.media3.datasource.d
                @Override // com.google.common.base.n
                public final boolean apply(Object obj) {
                    return c.C0092c.o((Map.Entry) obj);
                }
            });
        }

        @Override // com.google.common.collect.n2, java.util.Map
        public boolean equals(Object obj) {
            return obj != null && super.standardEquals(obj);
        }

        @Override // com.google.common.collect.n2, java.util.Map
        public int hashCode() {
            return super.standardHashCode();
        }

        @Override // com.google.common.collect.n2, java.util.Map
        public boolean isEmpty() {
            if (super.isEmpty()) {
                return true;
            }
            return super.size() == 1 && super.containsKey(null);
        }

        @Override // com.google.common.collect.n2, java.util.Map
        public Set keySet() {
            return Sets.b(super.keySet(), new n() { // from class: androidx.media3.datasource.e
                @Override // com.google.common.base.n
                public final boolean apply(Object obj) {
                    return c.C0092c.p((String) obj);
                }
            });
        }

        @Override // com.google.common.collect.n2, java.util.Map
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public List get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        @Override // com.google.common.collect.n2, java.util.Map
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }
    }

    private c(String str, int i11, int i12, boolean z10, boolean z11, HttpDataSource.b bVar, n nVar, boolean z12) {
        super(true);
        this.f10736i = str;
        this.f10734g = i11;
        this.f10735h = i12;
        this.f10732e = z10;
        this.f10733f = z11;
        if (z10 && z11) {
            throw new IllegalArgumentException("crossProtocolRedirectsForceOriginal should not be set if allowCrossProtocolRedirects is true");
        }
        this.f10737j = bVar;
        this.f10739l = nVar;
        this.f10738k = new HttpDataSource.b();
        this.f10740m = z12;
    }

    private void h() {
        HttpURLConnection httpURLConnection = this.f10742o;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e11) {
                u.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e11);
            }
        }
    }

    private URL i(URL url, String str, h hVar) throws HttpDataSource.HttpDataSourceException {
        if (str == null) {
            throw new HttpDataSource.HttpDataSourceException("Null location redirect", hVar, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new HttpDataSource.HttpDataSourceException("Unsupported protocol redirect: " + protocol, hVar, 2001, 1);
            }
            if (this.f10732e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            if (this.f10733f) {
                try {
                    return new URL(url2.toString().replaceFirst(protocol, url.getProtocol()));
                } catch (MalformedURLException e11) {
                    throw new HttpDataSource.HttpDataSourceException(e11, hVar, 2001, 1);
                }
            }
            throw new HttpDataSource.HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", hVar, 2001, 1);
        } catch (MalformedURLException e12) {
            throw new HttpDataSource.HttpDataSourceException(e12, hVar, 2001, 1);
        }
    }

    private static boolean j(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField(HttpHeaders.CONTENT_ENCODING));
    }

    private HttpURLConnection k(URL url, int i11, byte[] bArr, long j11, long j12, boolean z10, boolean z11, Map map) throws IOException {
        HttpURLConnection httpURLConnectionM = m(url);
        httpURLConnectionM.setConnectTimeout(this.f10734g);
        httpURLConnectionM.setReadTimeout(this.f10735h);
        HashMap map2 = new HashMap();
        HttpDataSource.b bVar = this.f10737j;
        if (bVar != null) {
            map2.putAll(bVar.b());
        }
        map2.putAll(this.f10738k.b());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionM.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strA = i.a(j11, j12);
        if (strA != null) {
            httpURLConnectionM.setRequestProperty("Range", strA);
        }
        String str = this.f10736i;
        if (str != null) {
            httpURLConnectionM.setRequestProperty("User-Agent", str);
        }
        httpURLConnectionM.setRequestProperty("Accept-Encoding", z10 ? "gzip" : "identity");
        httpURLConnectionM.setInstanceFollowRedirects(z11);
        httpURLConnectionM.setDoOutput(bArr != null);
        httpURLConnectionM.setRequestMethod(h.c(i11));
        if (bArr != null) {
            httpURLConnectionM.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionM.connect();
            OutputStream outputStream = httpURLConnectionM.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnectionM.connect();
        }
        return httpURLConnectionM;
    }

    private HttpURLConnection l(h hVar) throws IOException {
        URL url = new URL(hVar.f77511a.toString());
        int i11 = hVar.f77513c;
        byte[] bArr = hVar.f77514d;
        long j11 = hVar.f77517g;
        long j12 = hVar.f77518h;
        boolean zD = hVar.d(1);
        if (!this.f10732e && !this.f10733f && !this.f10740m) {
            return k(url, i11, bArr, j11, j12, zD, true, hVar.f77515e);
        }
        int i12 = 0;
        URL urlI = url;
        int i13 = i11;
        byte[] bArr2 = bArr;
        while (true) {
            int i14 = i12 + 1;
            if (i12 > 20) {
                throw new HttpDataSource.HttpDataSourceException(new NoRouteToHostException("Too many redirects: " + i14), hVar, 2001, 1);
            }
            long j13 = j11;
            long j14 = j11;
            int i15 = i13;
            URL url2 = urlI;
            long j15 = j12;
            HttpURLConnection httpURLConnectionK = k(urlI, i13, bArr2, j13, j12, zD, false, hVar.f77515e);
            int responseCode = httpURLConnectionK.getResponseCode();
            String headerField = httpURLConnectionK.getHeaderField(HttpHeaders.LOCATION);
            if ((i15 == 1 || i15 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionK.disconnect();
                urlI = i(url2, headerField, hVar);
                i13 = i15;
            } else {
                if (i15 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    return httpURLConnectionK;
                }
                httpURLConnectionK.disconnect();
                if (this.f10740m && responseCode == 302) {
                    i13 = i15;
                } else {
                    bArr2 = null;
                    i13 = 1;
                }
                urlI = i(url2, headerField, hVar);
            }
            i12 = i14;
            j11 = j14;
            j12 = j15;
        }
    }

    private int n(byte[] bArr, int i11, int i12) throws IOException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.f10746s;
        if (j11 != -1) {
            long j12 = j11 - this.f10747t;
            if (j12 == 0) {
                return -1;
            }
            i12 = (int) Math.min(i12, j12);
        }
        int i13 = ((InputStream) a1.i(this.f10743p)).read(bArr, i11, i12);
        if (i13 == -1) {
            return -1;
        }
        this.f10747t += (long) i13;
        d(i13);
        return i13;
    }

    private void o(long j11, h hVar) throws IOException {
        if (j11 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j11 > 0) {
            int i11 = ((InputStream) a1.i(this.f10743p)).read(bArr, 0, (int) Math.min(j11, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource.HttpDataSourceException(new InterruptedIOException(), hVar, 2000, 1);
            }
            if (i11 == -1) {
                throw new HttpDataSource.HttpDataSourceException(hVar, 2008, 1);
            }
            j11 -= (long) i11;
            d(i11);
        }
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) throws HttpDataSource.HttpDataSourceException {
        byte[] bArrB;
        this.f10741n = hVar;
        long j11 = 0;
        this.f10747t = 0L;
        this.f10746s = 0L;
        f(hVar);
        try {
            HttpURLConnection httpURLConnectionL = l(hVar);
            this.f10742o = httpURLConnectionL;
            this.f10745r = httpURLConnectionL.getResponseCode();
            String responseMessage = httpURLConnectionL.getResponseMessage();
            int i11 = this.f10745r;
            if (i11 < 200 || i11 > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionL.getHeaderFields();
                if (this.f10745r == 416) {
                    if (hVar.f77517g == i.c(httpURLConnectionL.getHeaderField("Content-Range"))) {
                        this.f10744q = true;
                        g(hVar);
                        long j12 = hVar.f77518h;
                        if (j12 != -1) {
                            return j12;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionL.getErrorStream();
                try {
                    bArrB = errorStream != null ? com.google.common.io.a.b(errorStream) : a1.f10355f;
                } catch (IOException unused) {
                    bArrB = a1.f10355f;
                }
                byte[] bArr = bArrB;
                h();
                throw new HttpDataSource.InvalidResponseCodeException(this.f10745r, responseMessage, this.f10745r == 416 ? new DataSourceException(2008) : null, headerFields, hVar, bArr);
            }
            String contentType = httpURLConnectionL.getContentType();
            n nVar = this.f10739l;
            if (nVar != null && !nVar.apply(contentType)) {
                h();
                throw new HttpDataSource.InvalidContentTypeException(contentType, hVar);
            }
            if (this.f10745r == 200) {
                long j13 = hVar.f77517g;
                if (j13 != 0) {
                    j11 = j13;
                }
            }
            boolean zJ = j(httpURLConnectionL);
            if (zJ) {
                this.f10746s = hVar.f77518h;
            } else {
                long j14 = hVar.f77518h;
                if (j14 != -1) {
                    this.f10746s = j14;
                } else {
                    long jB = i.b(httpURLConnectionL.getHeaderField(HttpHeaders.CONTENT_LENGTH), httpURLConnectionL.getHeaderField("Content-Range"));
                    this.f10746s = jB != -1 ? jB - j11 : -1L;
                }
            }
            try {
                this.f10743p = httpURLConnectionL.getInputStream();
                if (zJ) {
                    this.f10743p = new GZIPInputStream(this.f10743p);
                }
                this.f10744q = true;
                g(hVar);
                try {
                    o(j11, hVar);
                    return this.f10746s;
                } catch (IOException e11) {
                    h();
                    if (e11 instanceof HttpDataSource.HttpDataSourceException) {
                        throw ((HttpDataSource.HttpDataSourceException) e11);
                    }
                    throw new HttpDataSource.HttpDataSourceException(e11, hVar, 2000, 1);
                }
            } catch (IOException e12) {
                h();
                throw new HttpDataSource.HttpDataSourceException(e12, hVar, 2000, 1);
            }
        } catch (IOException e13) {
            h();
            throw HttpDataSource.HttpDataSourceException.createForIOException(e13, hVar, 1);
        }
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        try {
            InputStream inputStream = this.f10743p;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e11) {
                    throw new HttpDataSource.HttpDataSourceException(e11, (h) a1.i(this.f10741n), 2000, 3);
                }
            }
            this.f10743p = null;
            h();
            if (this.f10744q) {
                this.f10744q = false;
                e();
            }
            this.f10742o = null;
            this.f10741n = null;
        } catch (Throwable th2) {
            this.f10743p = null;
            h();
            if (this.f10744q) {
                this.f10744q = false;
                e();
            }
            this.f10742o = null;
            this.f10741n = null;
            throw th2;
        }
    }

    @Override // w1.a, androidx.media3.datasource.a
    public Map getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.f10742o;
        return httpURLConnection == null ? ImmutableMap.of() : new C0092c(httpURLConnection.getHeaderFields());
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.f10742o;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        h hVar = this.f10741n;
        if (hVar != null) {
            return hVar.f77511a;
        }
        return null;
    }

    HttpURLConnection m(URL url) {
        return (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) throws HttpDataSource.HttpDataSourceException {
        try {
            return n(bArr, i11, i12);
        } catch (IOException e11) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e11, (h) a1.i(this.f10741n), 2);
        }
    }
}
