package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.p0;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class b0 implements Loader.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n f27272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27273c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i0 f27274d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f27275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile Object f27276f;

    public interface a {
        Object parse(Uri uri, InputStream inputStream);
    }

    public b0(k kVar, Uri uri, int i11, a aVar) {
        this(kVar, new n.b().i(uri).b(1).a(), i11, aVar);
    }

    public b0(k kVar, n nVar, int i11, a aVar) {
        this.f27274d = new i0(kVar);
        this.f27272b = nVar;
        this.f27273c = i11;
        this.f27275e = aVar;
        this.f27271a = t9.h.a();
    }

    public static Object e(k kVar, a aVar, n nVar, int i11) {
        b0 b0Var = new b0(kVar, nVar, i11, aVar);
        b0Var.load();
        return com.google.android.exoplayer2.util.a.e(b0Var.c());
    }

    public long a() {
        return this.f27274d.f();
    }

    public Map b() {
        return this.f27274d.i();
    }

    public final Object c() {
        return this.f27276f;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public final void cancelLoad() {
    }

    public Uri d() {
        return this.f27274d.h();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public final void load() {
        this.f27274d.j();
        l lVar = new l(this.f27274d, this.f27272b);
        try {
            lVar.h();
            this.f27276f = this.f27275e.parse((Uri) com.google.android.exoplayer2.util.a.e(this.f27274d.getUri()), lVar);
        } finally {
            p0.n(lVar);
        }
    }
}
