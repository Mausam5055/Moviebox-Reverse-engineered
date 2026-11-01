package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Sets;
import com.google.common.collect.n2;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
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

/* JADX INFO: loaded from: classes3.dex */
public class s extends f implements k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f27507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f27508f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f27509g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f27510h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final w f27511i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final w f27512j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f27513k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.google.common.base.n f27514l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private n f27515m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private HttpURLConnection f27516n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private InputStream f27517o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f27518p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f27519q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f27520r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f27521s;

    public static final class b implements k.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private k0 f27523b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.google.common.base.n f27524c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f27525d;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f27528g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f27529h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final w f27522a = new w();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f27526e = 8000;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f27527f = 8000;

        @Override // com.google.android.exoplayer2.upstream.k.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public s createDataSource() {
            s sVar = new s(this.f27525d, this.f27526e, this.f27527f, this.f27528g, this.f27522a, this.f27524c, this.f27529h);
            k0 k0Var = this.f27523b;
            if (k0Var != null) {
                sVar.e(k0Var);
            }
            return sVar;
        }

        public b b(String str) {
            this.f27525d = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c extends n2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map f27530a;

        public c(Map map) {
            this.f27530a = map;
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
            return this.f27530a;
        }

        @Override // com.google.common.collect.n2, java.util.Map
        public Set entrySet() {
            return Sets.b(super.entrySet(), new com.google.common.base.n() { // from class: com.google.android.exoplayer2.upstream.u
                @Override // com.google.common.base.n
                public final boolean apply(Object obj) {
                    return s.c.o((Map.Entry) obj);
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
            return Sets.b(super.keySet(), new com.google.common.base.n() { // from class: com.google.android.exoplayer2.upstream.t
                @Override // com.google.common.base.n
                public final boolean apply(Object obj) {
                    return s.c.p((String) obj);
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

    @Deprecated
    public s() {
        this(null, 8000, 8000);
    }

    public s(String str, int i11, int i12) {
        this(str, i11, i12, false, null);
    }

    public s(String str, int i11, int i12, boolean z10, w wVar) {
        this(str, i11, i12, z10, wVar, null, false);
    }

    private s(String str, int i11, int i12, boolean z10, w wVar, com.google.common.base.n nVar, boolean z11) {
        super(true);
        this.f27510h = str;
        this.f27508f = i11;
        this.f27509g = i12;
        this.f27507e = z10;
        this.f27511i = wVar;
        this.f27514l = nVar;
        this.f27512j = new w();
        this.f27513k = z11;
    }

    private void l() {
        HttpURLConnection httpURLConnection = this.f27516n;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e11) {
                com.google.android.exoplayer2.util.s.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e11);
            }
            this.f27516n = null;
        }
    }

    private URL m(URL url, String str, n nVar) throws HttpDataSource$HttpDataSourceException {
        if (str == null) {
            throw new HttpDataSource$HttpDataSourceException("Null location redirect", nVar, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new HttpDataSource$HttpDataSourceException("Unsupported protocol redirect: " + protocol, nVar, 2001, 1);
            }
            if (this.f27507e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new HttpDataSource$HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", nVar, 2001, 1);
        } catch (MalformedURLException e11) {
            throw new HttpDataSource$HttpDataSourceException(e11, nVar, 2001, 1);
        }
    }

    private static boolean n(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField(HttpHeaders.CONTENT_ENCODING));
    }

    private HttpURLConnection o(n nVar) throws IOException {
        URL url = new URL(nVar.f27437a.toString());
        int i11 = nVar.f27439c;
        byte[] bArr = nVar.f27440d;
        long j11 = nVar.f27443g;
        long j12 = nVar.f27444h;
        boolean zD = nVar.d(1);
        if (!this.f27507e && !this.f27513k) {
            return p(url, i11, bArr, j11, j12, zD, true, nVar.f27441e);
        }
        int i12 = 0;
        URL urlM = url;
        int i13 = i11;
        byte[] bArr2 = bArr;
        while (true) {
            int i14 = i12 + 1;
            if (i12 > 20) {
                throw new HttpDataSource$HttpDataSourceException(new NoRouteToHostException("Too many redirects: " + i14), nVar, 2001, 1);
            }
            long j13 = j11;
            long j14 = j11;
            int i15 = i13;
            URL url2 = urlM;
            long j15 = j12;
            HttpURLConnection httpURLConnectionP = p(urlM, i13, bArr2, j13, j12, zD, false, nVar.f27441e);
            int responseCode = httpURLConnectionP.getResponseCode();
            String headerField = httpURLConnectionP.getHeaderField(HttpHeaders.LOCATION);
            if ((i15 == 1 || i15 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionP.disconnect();
                urlM = m(url2, headerField, nVar);
                i13 = i15;
            } else {
                if (i15 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    return httpURLConnectionP;
                }
                httpURLConnectionP.disconnect();
                if (this.f27513k && responseCode == 302) {
                    i13 = i15;
                } else {
                    bArr2 = null;
                    i13 = 1;
                }
                urlM = m(url2, headerField, nVar);
            }
            i12 = i14;
            j11 = j14;
            j12 = j15;
        }
    }

    private HttpURLConnection p(URL url, int i11, byte[] bArr, long j11, long j12, boolean z10, boolean z11, Map map) throws IOException {
        HttpURLConnection httpURLConnectionR = r(url);
        httpURLConnectionR.setConnectTimeout(this.f27508f);
        httpURLConnectionR.setReadTimeout(this.f27509g);
        HashMap map2 = new HashMap();
        w wVar = this.f27511i;
        if (wVar != null) {
            map2.putAll(wVar.a());
        }
        map2.putAll(this.f27512j.a());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionR.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strA = x.a(j11, j12);
        if (strA != null) {
            httpURLConnectionR.setRequestProperty("Range", strA);
        }
        String str = this.f27510h;
        if (str != null) {
            httpURLConnectionR.setRequestProperty("User-Agent", str);
        }
        httpURLConnectionR.setRequestProperty("Accept-Encoding", z10 ? "gzip" : "identity");
        httpURLConnectionR.setInstanceFollowRedirects(z11);
        httpURLConnectionR.setDoOutput(bArr != null);
        httpURLConnectionR.setRequestMethod(n.c(i11));
        if (bArr != null) {
            httpURLConnectionR.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionR.connect();
            OutputStream outputStream = httpURLConnectionR.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnectionR.connect();
        }
        return httpURLConnectionR;
    }

    private static void q(HttpURLConnection httpURLConnection, long j11) {
        int i11;
        if (httpURLConnection == null || (i11 = p0.f27626a) < 19 || i11 > 20) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (j11 == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j11 <= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) {
                return;
            }
            String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                Method declaredMethod = ((Class) com.google.android.exoplayer2.util.a.e(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, null);
            }
        } catch (Exception unused) {
        }
    }

    private int s(byte[] bArr, int i11, int i12) throws IOException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.f27520r;
        if (j11 != -1) {
            long j12 = j11 - this.f27521s;
            if (j12 == 0) {
                return -1;
            }
            i12 = (int) Math.min(i12, j12);
        }
        int i13 = ((InputStream) p0.j(this.f27517o)).read(bArr, i11, i12);
        if (i13 == -1) {
            return -1;
        }
        this.f27521s += (long) i13;
        h(i13);
        return i13;
    }

    private void t(long j11, n nVar) throws IOException {
        if (j11 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j11 > 0) {
            int i11 = ((InputStream) p0.j(this.f27517o)).read(bArr, 0, (int) Math.min(j11, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource$HttpDataSourceException(new InterruptedIOException(), nVar, 2000, 1);
            }
            if (i11 == -1) {
                throw new HttpDataSource$HttpDataSourceException(nVar, 2008, 1);
            }
            j11 -= (long) i11;
            h(i11);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(final n nVar) throws HttpDataSource$HttpDataSourceException {
        byte[] bArrY0;
        this.f27515m = nVar;
        long j11 = 0;
        this.f27521s = 0L;
        this.f27520r = 0L;
        j(nVar);
        try {
            HttpURLConnection httpURLConnectionO = o(nVar);
            this.f27516n = httpURLConnectionO;
            this.f27519q = httpURLConnectionO.getResponseCode();
            String responseMessage = httpURLConnectionO.getResponseMessage();
            int i11 = this.f27519q;
            if (i11 < 200 || i11 > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionO.getHeaderFields();
                if (this.f27519q == 416) {
                    if (nVar.f27443g == x.c(httpURLConnectionO.getHeaderField("Content-Range"))) {
                        this.f27518p = true;
                        k(nVar);
                        long j12 = nVar.f27444h;
                        if (j12 != -1) {
                            return j12;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionO.getErrorStream();
                try {
                    bArrY0 = errorStream != null ? p0.Y0(errorStream) : p0.f27631f;
                } catch (IOException unused) {
                    bArrY0 = p0.f27631f;
                }
                byte[] bArr = bArrY0;
                l();
                throw new HttpDataSource$InvalidResponseCodeException(this.f27519q, responseMessage, this.f27519q == 416 ? new DataSourceException(2008) : null, headerFields, nVar, bArr);
            }
            final String contentType = httpURLConnectionO.getContentType();
            com.google.common.base.n nVar2 = this.f27514l;
            if (nVar2 != null && !nVar2.apply(contentType)) {
                l();
                throw new HttpDataSource$HttpDataSourceException(contentType, nVar) { // from class: com.google.android.exoplayer2.upstream.HttpDataSource$InvalidContentTypeException
                    public final String contentType;

                    {
                        super("Invalid content type: " + contentType, nVar, 2003, 1);
                        this.contentType = contentType;
                    }
                };
            }
            if (this.f27519q == 200) {
                long j13 = nVar.f27443g;
                if (j13 != 0) {
                    j11 = j13;
                }
            }
            boolean zN = n(httpURLConnectionO);
            if (zN) {
                this.f27520r = nVar.f27444h;
            } else {
                long j14 = nVar.f27444h;
                if (j14 != -1) {
                    this.f27520r = j14;
                } else {
                    long jB = x.b(httpURLConnectionO.getHeaderField(HttpHeaders.CONTENT_LENGTH), httpURLConnectionO.getHeaderField("Content-Range"));
                    this.f27520r = jB != -1 ? jB - j11 : -1L;
                }
            }
            try {
                this.f27517o = httpURLConnectionO.getInputStream();
                if (zN) {
                    this.f27517o = new GZIPInputStream(this.f27517o);
                }
                this.f27518p = true;
                k(nVar);
                try {
                    t(j11, nVar);
                    return this.f27520r;
                } catch (IOException e11) {
                    l();
                    if (e11 instanceof HttpDataSource$HttpDataSourceException) {
                        throw ((HttpDataSource$HttpDataSourceException) e11);
                    }
                    throw new HttpDataSource$HttpDataSourceException(e11, nVar, 2000, 1);
                }
            } catch (IOException e12) {
                l();
                throw new HttpDataSource$HttpDataSourceException(e12, nVar, 2000, 1);
            }
        } catch (IOException e13) {
            l();
            throw HttpDataSource$HttpDataSourceException.createForIOException(e13, nVar, 1);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        try {
            InputStream inputStream = this.f27517o;
            if (inputStream != null) {
                long j11 = this.f27520r;
                long j12 = -1;
                if (j11 != -1) {
                    j12 = j11 - this.f27521s;
                }
                q(this.f27516n, j12);
                try {
                    inputStream.close();
                } catch (IOException e11) {
                    throw new HttpDataSource$HttpDataSourceException(e11, (n) p0.j(this.f27515m), 2000, 3);
                }
            }
            this.f27517o = null;
            l();
            if (this.f27518p) {
                this.f27518p = false;
                i();
            }
        } catch (Throwable th2) {
            this.f27517o = null;
            l();
            if (this.f27518p) {
                this.f27518p = false;
                i();
            }
            throw th2;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.f, com.google.android.exoplayer2.upstream.k
    public Map getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.f27516n;
        return httpURLConnection == null ? ImmutableMap.of() : new c(httpURLConnection.getHeaderFields());
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.f27516n;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    HttpURLConnection r(URL url) {
        return (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) throws HttpDataSource$HttpDataSourceException {
        try {
            return s(bArr, i11, i12);
        } catch (IOException e11) {
            throw HttpDataSource$HttpDataSourceException.createForIOException(e11, (n) p0.j(this.f27515m), 2);
        }
    }
}
