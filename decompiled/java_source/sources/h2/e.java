package h2;

import android.net.Uri;
import androidx.media3.common.r;
import androidx.media3.exoplayer.upstream.Loader;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e implements Loader.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f64296a = g2.i.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w1.h f64297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f64298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final r f64299d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f64300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f64301f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f64302g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f64303h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected final w1.l f64304i;

    public e(androidx.media3.datasource.a aVar, w1.h hVar, int i11, r rVar, int i12, Object obj, long j11, long j12) {
        this.f64304i = new w1.l(aVar);
        this.f64297b = (w1.h) androidx.media3.common.util.a.e(hVar);
        this.f64298c = i11;
        this.f64299d = rVar;
        this.f64300e = i12;
        this.f64301f = obj;
        this.f64302g = j11;
        this.f64303h = j12;
    }

    public final long a() {
        return this.f64304i.d();
    }

    public final long b() {
        return this.f64303h - this.f64302g;
    }

    public final Map c() {
        return this.f64304i.f();
    }

    public final Uri d() {
        return this.f64304i.e();
    }
}
