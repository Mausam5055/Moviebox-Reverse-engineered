package v9;

import android.net.Uri;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.i0;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class f implements Loader.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f77132a = t9.h.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.google.android.exoplayer2.upstream.n f77133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f77134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o1 f77135d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f77136e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f77137f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f77138g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f77139h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected final i0 f77140i;

    public f(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, int i11, o1 o1Var, int i12, Object obj, long j11, long j12) {
        this.f77140i = new i0(kVar);
        this.f77133b = (com.google.android.exoplayer2.upstream.n) com.google.android.exoplayer2.util.a.e(nVar);
        this.f77134c = i11;
        this.f77135d = o1Var;
        this.f77136e = i12;
        this.f77137f = obj;
        this.f77138g = j11;
        this.f77139h = j12;
    }

    public final long a() {
        return this.f77140i.f();
    }

    public final long b() {
        return this.f77139h - this.f77138g;
    }

    public final Map c() {
        return this.f77140i.i();
    }

    public final Uri d() {
        return this.f77140i.h();
    }
}
