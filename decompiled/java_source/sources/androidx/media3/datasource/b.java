package androidx.media3.datasource;

import android.content.Context;
import android.net.Uri;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import w1.h;
import w1.n;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements androidx.media3.datasource.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f10719b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.datasource.a f10720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.media3.datasource.a f10721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.media3.datasource.a f10722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.media3.datasource.a f10723f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private androidx.media3.datasource.a f10724g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private androidx.media3.datasource.a f10725h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.media3.datasource.a f10726i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private androidx.media3.datasource.a f10727j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private androidx.media3.datasource.a f10728k;

    public static final class a implements androidx.media3.datasource.a.InterfaceC0091a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f10729a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.media3.datasource.a.InterfaceC0091a f10730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private n f10731c;

        public a(Context context) {
            this(context, new c.b());
        }

        public a(Context context, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
            this.f10729a = context.getApplicationContext();
            this.f10730b = (androidx.media3.datasource.a.InterfaceC0091a) androidx.media3.common.util.a.e(interfaceC0091a);
        }

        @Override // androidx.media3.datasource.a.InterfaceC0091a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b createDataSource() {
            b bVar = new b(this.f10729a, this.f10730b.createDataSource());
            n nVar = this.f10731c;
            if (nVar != null) {
                bVar.c(nVar);
            }
            return bVar;
        }
    }

    public b(Context context, androidx.media3.datasource.a aVar) {
        this.f10718a = context.getApplicationContext();
        this.f10720c = (androidx.media3.datasource.a) androidx.media3.common.util.a.e(aVar);
    }

    private void d(androidx.media3.datasource.a aVar) {
        for (int i11 = 0; i11 < this.f10719b.size(); i11++) {
            aVar.c((n) this.f10719b.get(i11));
        }
    }

    private androidx.media3.datasource.a e() {
        if (this.f10722e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f10718a);
            this.f10722e = assetDataSource;
            d(assetDataSource);
        }
        return this.f10722e;
    }

    private androidx.media3.datasource.a f() {
        if (this.f10723f == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.f10718a);
            this.f10723f = contentDataSource;
            d(contentDataSource);
        }
        return this.f10723f;
    }

    private androidx.media3.datasource.a g() {
        if (this.f10726i == null) {
            w1.c cVar = new w1.c();
            this.f10726i = cVar;
            d(cVar);
        }
        return this.f10726i;
    }

    private androidx.media3.datasource.a h() {
        if (this.f10721d == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.f10721d = fileDataSource;
            d(fileDataSource);
        }
        return this.f10721d;
    }

    private androidx.media3.datasource.a i() {
        if (this.f10727j == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f10718a);
            this.f10727j = rawResourceDataSource;
            d(rawResourceDataSource);
        }
        return this.f10727j;
    }

    private androidx.media3.datasource.a j() {
        if (this.f10724g == null) {
            try {
                androidx.media3.datasource.a aVar = (androidx.media3.datasource.a) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                this.f10724g = aVar;
                d(aVar);
            } catch (ClassNotFoundException unused) {
                u.h("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e11) {
                throw new RuntimeException("Error instantiating RTMP extension", e11);
            }
            if (this.f10724g == null) {
                this.f10724g = this.f10720c;
            }
        }
        return this.f10724g;
    }

    private androidx.media3.datasource.a k() {
        if (this.f10725h == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.f10725h = udpDataSource;
            d(udpDataSource);
        }
        return this.f10725h;
    }

    private void l(androidx.media3.datasource.a aVar, n nVar) {
        if (aVar != null) {
            aVar.c(nVar);
        }
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) {
        androidx.media3.common.util.a.g(this.f10728k == null);
        String scheme = hVar.f77511a.getScheme();
        if (a1.J0(hVar.f77511a)) {
            String path = hVar.f77511a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                this.f10728k = h();
            } else {
                this.f10728k = e();
            }
        } else if ("asset".equals(scheme)) {
            this.f10728k = e();
        } else if ("content".equals(scheme)) {
            this.f10728k = f();
        } else if ("rtmp".equals(scheme)) {
            this.f10728k = j();
        } else if ("udp".equals(scheme)) {
            this.f10728k = k();
        } else if ("data".equals(scheme)) {
            this.f10728k = g();
        } else if (com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) || "android.resource".equals(scheme)) {
            this.f10728k = i();
        } else {
            this.f10728k = this.f10720c;
        }
        return this.f10728k.a(hVar);
    }

    @Override // androidx.media3.datasource.a
    public void c(n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f10720c.c(nVar);
        this.f10719b.add(nVar);
        l(this.f10721d, nVar);
        l(this.f10722e, nVar);
        l(this.f10723f, nVar);
        l(this.f10724g, nVar);
        l(this.f10725h, nVar);
        l(this.f10726i, nVar);
        l(this.f10727j, nVar);
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        androidx.media3.datasource.a aVar = this.f10728k;
        if (aVar != null) {
            try {
                aVar.close();
            } finally {
                this.f10728k = null;
            }
        }
    }

    @Override // androidx.media3.datasource.a
    public Map getResponseHeaders() {
        androidx.media3.datasource.a aVar = this.f10728k;
        return aVar == null ? Collections.emptyMap() : aVar.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        androidx.media3.datasource.a aVar = this.f10728k;
        if (aVar == null) {
            return null;
        }
        return aVar.getUri();
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) {
        return ((androidx.media3.datasource.a) androidx.media3.common.util.a.e(this.f10728k)).read(bArr, i11, i12);
    }
}
