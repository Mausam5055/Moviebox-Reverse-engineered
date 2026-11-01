package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class r implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f27493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f27494b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k f27495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private k f27496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private k f27497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private k f27498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private k f27499g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private k f27500h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private k f27501i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private k f27502j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private k f27503k;

    public static final class a implements k.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f27504a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k.a f27505b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private k0 f27506c;

        public a(Context context) {
            this(context, new s.b());
        }

        public a(Context context, k.a aVar) {
            this.f27504a = context.getApplicationContext();
            this.f27505b = aVar;
        }

        @Override // com.google.android.exoplayer2.upstream.k.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public r createDataSource() {
            r rVar = new r(this.f27504a, this.f27505b.createDataSource());
            k0 k0Var = this.f27506c;
            if (k0Var != null) {
                rVar.e(k0Var);
            }
            return rVar;
        }
    }

    public r(Context context, k kVar) {
        this.f27493a = context.getApplicationContext();
        this.f27495c = (k) com.google.android.exoplayer2.util.a.e(kVar);
    }

    private void f(k kVar) {
        for (int i11 = 0; i11 < this.f27494b.size(); i11++) {
            kVar.e((k0) this.f27494b.get(i11));
        }
    }

    private k h() {
        if (this.f27497e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f27493a);
            this.f27497e = assetDataSource;
            f(assetDataSource);
        }
        return this.f27497e;
    }

    private k i() {
        if (this.f27498f == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.f27493a);
            this.f27498f = contentDataSource;
            f(contentDataSource);
        }
        return this.f27498f;
    }

    private k j() {
        if (this.f27501i == null) {
            h hVar = new h();
            this.f27501i = hVar;
            f(hVar);
        }
        return this.f27501i;
    }

    private k k() {
        if (this.f27496d == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.f27496d = fileDataSource;
            f(fileDataSource);
        }
        return this.f27496d;
    }

    private k l() {
        if (this.f27502j == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f27493a);
            this.f27502j = rawResourceDataSource;
            f(rawResourceDataSource);
        }
        return this.f27502j;
    }

    private k m() {
        if (this.f27499g == null) {
            try {
                k kVar = (k) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                this.f27499g = kVar;
                f(kVar);
            } catch (ClassNotFoundException unused) {
                com.google.android.exoplayer2.util.s.i("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e11) {
                throw new RuntimeException("Error instantiating RTMP extension", e11);
            }
            if (this.f27499g == null) {
                this.f27499g = this.f27495c;
            }
        }
        return this.f27499g;
    }

    private k n() {
        if (this.f27500h == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.f27500h = udpDataSource;
            f(udpDataSource);
        }
        return this.f27500h;
    }

    private void o(k kVar, k0 k0Var) {
        if (kVar != null) {
            kVar.e(k0Var);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(n nVar) {
        com.google.android.exoplayer2.util.a.g(this.f27503k == null);
        String scheme = nVar.f27437a.getScheme();
        if (p0.w0(nVar.f27437a)) {
            String path = nVar.f27437a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                this.f27503k = k();
            } else {
                this.f27503k = h();
            }
        } else if ("asset".equals(scheme)) {
            this.f27503k = h();
        } else if ("content".equals(scheme)) {
            this.f27503k = i();
        } else if ("rtmp".equals(scheme)) {
            this.f27503k = m();
        } else if ("udp".equals(scheme)) {
            this.f27503k = n();
        } else if ("data".equals(scheme)) {
            this.f27503k = j();
        } else if (com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) || "android.resource".equals(scheme)) {
            this.f27503k = l();
        } else {
            this.f27503k = this.f27495c;
        }
        return this.f27503k.a(nVar);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        k kVar = this.f27503k;
        if (kVar != null) {
            try {
                kVar.close();
            } finally {
                this.f27503k = null;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f27495c.e(k0Var);
        this.f27494b.add(k0Var);
        o(this.f27496d, k0Var);
        o(this.f27497e, k0Var);
        o(this.f27498f, k0Var);
        o(this.f27499g, k0Var);
        o(this.f27500h, k0Var);
        o(this.f27501i, k0Var);
        o(this.f27502j, k0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Map getResponseHeaders() {
        k kVar = this.f27503k;
        return kVar == null ? Collections.emptyMap() : kVar.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        k kVar = this.f27503k;
        if (kVar == null) {
            return null;
        }
        return kVar.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) {
        return ((k) com.google.android.exoplayer2.util.a.e(this.f27503k)).read(bArr, i11, i12);
    }
}
