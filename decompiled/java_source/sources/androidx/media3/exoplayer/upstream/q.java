package androidx.media3.exoplayer.upstream;

import android.net.Uri;
import androidx.media3.common.util.a1;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements Loader.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f13014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w1.h f13015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13016c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final w1.l f13017d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f13018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile Object f13019f;

    /* JADX INFO: loaded from: classes.dex */
    public interface a {
        Object parse(Uri uri, InputStream inputStream);
    }

    public q(androidx.media3.datasource.a aVar, Uri uri, int i11, a aVar2) {
        this(aVar, new w1.h.b().i(uri).b(1).a(), i11, aVar2);
    }

    public q(androidx.media3.datasource.a aVar, w1.h hVar, int i11, a aVar2) {
        this.f13017d = new w1.l(aVar);
        this.f13015b = hVar;
        this.f13016c = i11;
        this.f13018e = aVar2;
        this.f13014a = g2.i.a();
    }

    public static Object e(androidx.media3.datasource.a aVar, a aVar2, w1.h hVar, int i11) {
        q qVar = new q(aVar, hVar, i11, aVar2);
        qVar.load();
        return androidx.media3.common.util.a.e(qVar.c());
    }

    public long a() {
        return this.f13017d.d();
    }

    public Map b() {
        return this.f13017d.f();
    }

    public final Object c() {
        return this.f13019f;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public final void cancelLoad() {
    }

    public Uri d() {
        return this.f13017d.e();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public final void load() {
        this.f13017d.g();
        w1.f fVar = new w1.f(this.f13017d, this.f13015b);
        try {
            fVar.h();
            this.f13019f = this.f13018e.parse((Uri) androidx.media3.common.util.a.e(this.f13017d.getUri()), fVar);
        } finally {
            a1.m(fVar);
        }
    }
}
