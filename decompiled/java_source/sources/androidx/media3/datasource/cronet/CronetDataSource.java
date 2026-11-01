package androidx.media3.datasource.cronet;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.u;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.i;
import androidx.media3.common.util.l;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.HttpDataSource;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.common.base.n;
import com.google.common.primitives.Longs;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.chromium.net.CronetEngine;
import org.chromium.net.CronetException;
import org.chromium.net.NetworkException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;
import w1.h;

/* JADX INFO: loaded from: classes2.dex */
public class CronetDataSource extends w1.a implements HttpDataSource {
    private IOException A;
    private boolean B;
    private volatile long C;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CronetEngine f10871e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Executor f10872f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f10873g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f10874h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f10875i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f10876j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f10877k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f10878l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final HttpDataSource.b f10879m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final HttpDataSource.b f10880n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final l f10881o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final i f10882p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f10883q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final n f10884r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f10885s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f10886t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f10887u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private UrlRequest f10888v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    c f10889w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private h f10890x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ByteBuffer f10891y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private UrlResponseInfo f10892z;

    public static final class OpenException extends HttpDataSource.HttpDataSourceException {
        public final int cronetConnectionStatus;

        @Deprecated
        public OpenException(IOException iOException, h hVar, int i11) {
            super(iOException, hVar, 2000, 1);
            this.cronetConnectionStatus = i11;
        }

        public OpenException(IOException iOException, h hVar, int i11, int i12) {
            super(iOException, hVar, i11, 1);
            this.cronetConnectionStatus = i12;
        }

        @Deprecated
        public OpenException(String str, h hVar, int i11) {
            super(str, hVar, 2000, 1);
            this.cronetConnectionStatus = i11;
        }

        public OpenException(String str, h hVar, int i11, int i12) {
            super(str, hVar, i11, 1);
            this.cronetConnectionStatus = i12;
        }

        public OpenException(h hVar, int i11, int i12) {
            super(hVar, i11, 1);
            this.cronetConnectionStatus = i12;
        }
    }

    class a extends UrlRequest.StatusListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int[] f10893a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ l f10894b;

        a(int[] iArr, l lVar) {
            this.f10893a = iArr;
            this.f10894b = lVar;
        }

        @Override // org.chromium.net.UrlRequest.StatusListener
        public void onStatus(int i11) {
            this.f10893a[0] = i11;
            this.f10894b.f();
        }
    }

    public static final class b implements HttpDataSource.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CronetEngine f10895a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Executor f10896b;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private HttpDataSource.a f10899e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private n f10900f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private w1.n f10901g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f10902h;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f10907m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f10908n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f10909o;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final HttpDataSource.b f10897c = new HttpDataSource.b();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final androidx.media3.datasource.c.b f10898d = null;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f10903i = 3;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f10904j = 8000;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f10905k = 8000;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f10906l = 32768;

        public b(CronetEngine cronetEngine, Executor executor) {
            this.f10895a = (CronetEngine) androidx.media3.common.util.a.e(cronetEngine);
            this.f10896b = executor;
        }

        @Override // androidx.media3.datasource.HttpDataSource.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final b a(Map map) {
            this.f10897c.a(map);
            androidx.media3.datasource.c.b bVar = this.f10898d;
            if (bVar != null) {
                bVar.a(map);
            }
            return this;
        }

        @Override // androidx.media3.datasource.a.InterfaceC0091a
        public HttpDataSource createDataSource() {
            if (this.f10895a == null) {
                HttpDataSource.a aVar = this.f10899e;
                return aVar != null ? aVar.createDataSource() : ((androidx.media3.datasource.c.b) androidx.media3.common.util.a.e(this.f10898d)).createDataSource();
            }
            CronetDataSource cronetDataSource = new CronetDataSource(this.f10895a, this.f10896b, this.f10903i, this.f10904j, this.f10905k, this.f10907m, this.f10908n, this.f10902h, this.f10897c, this.f10900f, this.f10909o, this.f10906l);
            w1.n nVar = this.f10901g;
            if (nVar != null) {
                cronetDataSource.c(nVar);
            }
            return cronetDataSource;
        }
    }

    final class c extends UrlRequest.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private volatile boolean f10910a = false;

        c() {
        }

        public void a() {
            this.f10910a = true;
        }

        @Override // org.chromium.net.UrlRequest.Callback
        public synchronized void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
            try {
                if (this.f10910a) {
                    return;
                }
                if ((cronetException instanceof NetworkException) && ((NetworkException) cronetException).getErrorCode() == 1) {
                    CronetDataSource.this.A = new UnknownHostException();
                } else {
                    CronetDataSource.this.A = cronetException;
                }
                CronetDataSource.this.f10881o.f();
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override // org.chromium.net.UrlRequest.Callback
        public synchronized void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
            if (this.f10910a) {
                return;
            }
            CronetDataSource.this.f10881o.f();
        }

        @Override // org.chromium.net.UrlRequest.Callback
        public synchronized void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
            if (this.f10910a) {
                return;
            }
            androidx.media3.common.util.a.e(CronetDataSource.this.f10888v);
            androidx.media3.common.util.a.e(CronetDataSource.this.f10889w);
            h hVar = (h) androidx.media3.common.util.a.e(CronetDataSource.this.f10890x);
            int httpStatusCode = urlResponseInfo.getHttpStatusCode();
            if (hVar.f77513c == 2 && (httpStatusCode == 307 || httpStatusCode == 308)) {
                CronetDataSource.this.A = new HttpDataSource.InvalidResponseCodeException(httpStatusCode, urlResponseInfo.getHttpStatusText(), null, urlResponseInfo.getAllHeaders(), hVar, a1.f10355f);
                CronetDataSource.this.f10881o.f();
                return;
            }
            if (CronetDataSource.this.f10876j) {
                CronetDataSource.this.F();
            }
            boolean z10 = CronetDataSource.this.f10885s && hVar.f77513c == 2 && httpStatusCode == 302;
            if (!z10 && !CronetDataSource.this.f10877k) {
                urlRequest.followRedirect();
                return;
            }
            String strC = CronetDataSource.C(urlResponseInfo.getAllHeaders().get("Set-Cookie"));
            if (!z10 && TextUtils.isEmpty(strC)) {
                urlRequest.followRedirect();
                return;
            }
            h hVarG = (z10 || hVar.f77513c != 2) ? hVar.g(Uri.parse(str)) : hVar.a().j(str).d(1).c(null).a();
            if (!TextUtils.isEmpty(strC)) {
                HashMap map = new HashMap();
                map.putAll(hVar.f77515e);
                map.put("Cookie", strC);
                hVarG = hVarG.a().e(map).a();
            }
            CronetDataSource.this.w();
            try {
                CronetDataSource.this.x(hVarG);
                CronetDataSource.this.f10888v.start();
            } catch (IOException e11) {
                CronetDataSource.this.A = e11;
            }
        }

        @Override // org.chromium.net.UrlRequest.Callback
        public synchronized void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
            if (this.f10910a) {
                return;
            }
            CronetDataSource.this.f10892z = urlResponseInfo;
            CronetDataSource.this.f10881o.f();
        }

        @Override // org.chromium.net.UrlRequest.Callback
        public synchronized void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
            if (this.f10910a) {
                return;
            }
            CronetDataSource.this.B = true;
            CronetDataSource.this.f10881o.f();
        }
    }

    static {
        u.a("media3.datasource.cronet");
    }

    protected CronetDataSource(CronetEngine cronetEngine, Executor executor, int i11, int i12, int i13, boolean z10, boolean z11, String str, HttpDataSource.b bVar, n nVar, boolean z12, int i14) {
        super(true);
        this.f10871e = (CronetEngine) androidx.media3.common.util.a.e(cronetEngine);
        this.f10872f = (Executor) androidx.media3.common.util.a.e(executor);
        this.f10873g = i11;
        this.f10874h = i12;
        this.f10875i = i13;
        this.f10876j = z10;
        this.f10877k = z11;
        this.f10878l = str;
        this.f10879m = bVar;
        this.f10884r = nVar;
        this.f10885s = z12;
        this.f10882p = i.f10387a;
        this.f10883q = i14;
        this.f10880n = new HttpDataSource.b();
        this.f10881o = new l();
    }

    private static int A(UrlRequest urlRequest) {
        l lVar = new l();
        int[] iArr = new int[1];
        urlRequest.getStatus(new a(iArr, lVar));
        lVar.a();
        return iArr[0];
    }

    private static boolean B(UrlResponseInfo urlResponseInfo) {
        for (Map.Entry<String, String> entry : urlResponseInfo.getAllHeadersAsList()) {
            if (entry.getKey().equalsIgnoreCase(HttpHeaders.CONTENT_ENCODING)) {
                return !entry.getValue().equalsIgnoreCase("identity");
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String C(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return TextUtils.join(";", list);
    }

    private void D(ByteBuffer byteBuffer, h hVar) throws HttpDataSource.HttpDataSourceException {
        ((UrlRequest) a1.i(this.f10888v)).read(byteBuffer);
        try {
            if (!this.f10881o.b(this.f10875i)) {
                throw new SocketTimeoutException();
            }
        } catch (InterruptedException unused) {
            if (byteBuffer == this.f10891y) {
                this.f10891y = null;
            }
            Thread.currentThread().interrupt();
            this.A = new InterruptedIOException();
        } catch (SocketTimeoutException e11) {
            if (byteBuffer == this.f10891y) {
                this.f10891y = null;
            }
            this.A = new HttpDataSource.HttpDataSourceException(e11, hVar, 2002, 2);
        }
        IOException iOException = this.A;
        if (iOException != null) {
            if (!(iOException instanceof HttpDataSource.HttpDataSourceException)) {
                throw HttpDataSource.HttpDataSourceException.createForIOException(iOException, hVar, 2);
            }
            throw ((HttpDataSource.HttpDataSourceException) iOException);
        }
    }

    private byte[] E() throws HttpDataSource.HttpDataSourceException {
        byte[] bArrCopyOf = a1.f10355f;
        ByteBuffer byteBufferZ = z();
        while (!this.B) {
            this.f10881o.d();
            byteBufferZ.clear();
            D(byteBufferZ, (h) a1.i(this.f10890x));
            byteBufferZ.flip();
            if (byteBufferZ.remaining() > 0) {
                int length = bArrCopyOf.length;
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, bArrCopyOf.length + byteBufferZ.remaining());
                byteBufferZ.get(bArrCopyOf, length, byteBufferZ.remaining());
            }
        }
        return bArrCopyOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        this.C = this.f10882p.elapsedRealtime() + ((long) this.f10874h);
    }

    private void G(long j11, h hVar) throws HttpDataSource.HttpDataSourceException {
        if (j11 == 0) {
            return;
        }
        ByteBuffer byteBufferZ = z();
        while (j11 > 0) {
            try {
                this.f10881o.d();
                byteBufferZ.clear();
                D(byteBufferZ, hVar);
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                if (this.B) {
                    throw new OpenException(hVar, 2008, 14);
                }
                byteBufferZ.flip();
                androidx.media3.common.util.a.g(byteBufferZ.hasRemaining());
                int iMin = (int) Math.min(byteBufferZ.remaining(), j11);
                byteBufferZ.position(byteBufferZ.position() + iMin);
                j11 -= (long) iMin;
            } catch (IOException e11) {
                if (e11 instanceof HttpDataSource.HttpDataSourceException) {
                    throw ((HttpDataSource.HttpDataSourceException) e11);
                }
                throw new OpenException(e11, hVar, e11 instanceof SocketTimeoutException ? 2002 : 2001, 14);
            }
        }
    }

    private boolean u() {
        long jElapsedRealtime = this.f10882p.elapsedRealtime();
        boolean zB = false;
        while (!zB && jElapsedRealtime < this.C) {
            zB = this.f10881o.b((this.C - jElapsedRealtime) + 5);
            jElapsedRealtime = this.f10882p.elapsedRealtime();
        }
        return zB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        UrlRequest urlRequest = this.f10888v;
        if (urlRequest != null) {
            urlRequest.cancel();
            this.f10888v = null;
        }
        c cVar = this.f10889w;
        if (cVar != null) {
            cVar.a();
            this.f10889w = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(h hVar) {
        this.f10889w = new c();
        this.f10888v = v(hVar).build();
    }

    private static String y(Map map, String str) {
        List list = (List) map.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (String) list.get(0);
    }

    private ByteBuffer z() {
        if (this.f10891y == null) {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(this.f10883q);
            this.f10891y = byteBufferAllocateDirect;
            byteBufferAllocateDirect.limit(0);
        }
        return this.f10891y;
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) throws HttpDataSource.HttpDataSourceException {
        byte[] bArrE;
        String strY;
        androidx.media3.common.util.a.e(hVar);
        androidx.media3.common.util.a.g(!this.f10886t);
        this.f10881o.d();
        F();
        this.f10890x = hVar;
        try {
            x(hVar);
            UrlRequest urlRequest = this.f10888v;
            urlRequest.start();
            f(hVar);
            try {
                boolean zU = u();
                IOException iOException = this.A;
                if (iOException != null) {
                    String message = iOException.getMessage();
                    if (message == null || !com.google.common.base.a.e(message).contains("err_cleartext_not_permitted")) {
                        throw new OpenException(iOException, hVar, 2001, A(urlRequest));
                    }
                    throw new HttpDataSource.CleartextNotPermittedException(iOException, hVar);
                }
                if (!zU) {
                    throw new OpenException(new SocketTimeoutException(), hVar, 2002, A(urlRequest));
                }
                UrlResponseInfo urlResponseInfo = (UrlResponseInfo) androidx.media3.common.util.a.e(this.f10892z);
                int httpStatusCode = urlResponseInfo.getHttpStatusCode();
                Map<String, List<String>> allHeaders = urlResponseInfo.getAllHeaders();
                long j11 = 0;
                if (httpStatusCode < 200 || httpStatusCode > 299) {
                    if (httpStatusCode == 416) {
                        if (hVar.f77517g == w1.i.c(y(allHeaders, "Content-Range"))) {
                            this.f10886t = true;
                            g(hVar);
                            long j12 = hVar.f77518h;
                            if (j12 != -1) {
                                return j12;
                            }
                            return 0L;
                        }
                    }
                    try {
                        bArrE = E();
                    } catch (IOException unused) {
                        bArrE = a1.f10355f;
                    }
                    throw new HttpDataSource.InvalidResponseCodeException(httpStatusCode, urlResponseInfo.getHttpStatusText(), httpStatusCode == 416 ? new DataSourceException(2008) : null, allHeaders, hVar, bArrE);
                }
                n nVar = this.f10884r;
                if (nVar != null && (strY = y(allHeaders, HttpHeaders.CONTENT_TYPE)) != null && !nVar.apply(strY)) {
                    throw new HttpDataSource.InvalidContentTypeException(strY, hVar);
                }
                if (httpStatusCode == 200) {
                    long j13 = hVar.f77517g;
                    if (j13 != 0) {
                        j11 = j13;
                    }
                }
                if (B(urlResponseInfo)) {
                    this.f10887u = hVar.f77518h;
                } else {
                    long j14 = hVar.f77518h;
                    if (j14 != -1) {
                        this.f10887u = j14;
                    } else {
                        long jB = w1.i.b(y(allHeaders, HttpHeaders.CONTENT_LENGTH), y(allHeaders, "Content-Range"));
                        this.f10887u = jB != -1 ? jB - j11 : -1L;
                    }
                }
                this.f10886t = true;
                g(hVar);
                G(j11, hVar);
                return this.f10887u;
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
                throw new OpenException(new InterruptedIOException(), hVar, 1004, -1);
            }
        } catch (IOException e11) {
            if (e11 instanceof HttpDataSource.HttpDataSourceException) {
                throw ((HttpDataSource.HttpDataSourceException) e11);
            }
            throw new OpenException(e11, hVar, 2000, 0);
        }
    }

    @Override // androidx.media3.datasource.a
    public synchronized void close() {
        try {
            w();
            ByteBuffer byteBuffer = this.f10891y;
            if (byteBuffer != null) {
                byteBuffer.limit(0);
            }
            this.f10890x = null;
            this.f10892z = null;
            this.A = null;
            this.B = false;
            if (this.f10886t) {
                this.f10886t = false;
                e();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // w1.a, androidx.media3.datasource.a
    public Map getResponseHeaders() {
        UrlResponseInfo urlResponseInfo = this.f10892z;
        return urlResponseInfo == null ? Collections.emptyMap() : urlResponseInfo.getAllHeaders();
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        UrlResponseInfo urlResponseInfo = this.f10892z;
        if (urlResponseInfo != null) {
            return Uri.parse(urlResponseInfo.getUrl());
        }
        h hVar = this.f10890x;
        if (hVar != null) {
            return hVar.f77511a;
        }
        return null;
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) throws HttpDataSource.HttpDataSourceException {
        androidx.media3.common.util.a.g(this.f10886t);
        if (i12 == 0) {
            return 0;
        }
        if (this.f10887u == 0) {
            return -1;
        }
        ByteBuffer byteBufferZ = z();
        if (!byteBufferZ.hasRemaining()) {
            this.f10881o.d();
            byteBufferZ.clear();
            D(byteBufferZ, (h) a1.i(this.f10890x));
            if (this.B) {
                this.f10887u = 0L;
                return -1;
            }
            byteBufferZ.flip();
            androidx.media3.common.util.a.g(byteBufferZ.hasRemaining());
        }
        long j11 = this.f10887u;
        if (j11 == -1) {
            j11 = Long.MAX_VALUE;
        }
        int i13 = (int) Longs.i(j11, byteBufferZ.remaining(), i12);
        byteBufferZ.get(bArr, i11, i13);
        long j12 = this.f10887u;
        if (j12 != -1) {
            this.f10887u = j12 - ((long) i13);
        }
        d(i13);
        return i13;
    }

    protected UrlRequest.Builder v(h hVar) throws OpenException {
        UrlRequest.Builder builderAllowDirectExecutor = this.f10871e.newUrlRequestBuilder(hVar.f77511a.toString(), this.f10889w, this.f10872f).setPriority(this.f10873g).allowDirectExecutor();
        HashMap map = new HashMap();
        HttpDataSource.b bVar = this.f10879m;
        if (bVar != null) {
            map.putAll(bVar.b());
        }
        map.putAll(this.f10880n.b());
        map.putAll(hVar.f77515e);
        for (Map.Entry entry : map.entrySet()) {
            builderAllowDirectExecutor.addHeader((String) entry.getKey(), (String) entry.getValue());
        }
        if (hVar.f77514d != null && !map.containsKey(HttpHeaders.CONTENT_TYPE)) {
            throw new OpenException("HTTP request with non-empty body must set Content-Type", hVar, 1004, 0);
        }
        String strA = w1.i.a(hVar.f77517g, hVar.f77518h);
        if (strA != null) {
            builderAllowDirectExecutor.addHeader("Range", strA);
        }
        String str = this.f10878l;
        if (str != null) {
            builderAllowDirectExecutor.addHeader("User-Agent", str);
        }
        builderAllowDirectExecutor.setHttpMethod(hVar.b());
        byte[] bArr = hVar.f77514d;
        if (bArr != null) {
            builderAllowDirectExecutor.setUploadDataProvider(new androidx.media3.datasource.cronet.a(bArr), this.f10872f);
        }
        return builderAllowDirectExecutor;
    }
}
