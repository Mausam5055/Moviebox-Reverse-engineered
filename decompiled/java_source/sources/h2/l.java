package h2;

import androidx.media3.common.r;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends e {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final f f64345j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private f.b f64346k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private l2.h f64347l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f64348m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private volatile boolean f64349n;

    public l(androidx.media3.datasource.a aVar, w1.h hVar, r rVar, int i11, Object obj, f fVar) {
        super(aVar, hVar, 2, rVar, i11, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.f64345j = fVar;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public void cancelLoad() {
        this.f64349n = true;
    }

    public void e(f.b bVar) {
        this.f64346k = bVar;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public void load() {
        if (this.f64348m == 0) {
            this.f64345j.d(this.f64346k, C.TIME_UNSET, C.TIME_UNSET);
        }
        try {
            w1.h hVarE = this.f64297b.e(this.f64348m);
            w1.l lVar = this.f64304i;
            l2.j jVar = new l2.j(lVar, hVarE.f77517g, lVar.a(hVarE));
            while (!this.f64349n && this.f64345j.a(jVar)) {
                try {
                } catch (Throwable th2) {
                    this.f64348m = jVar.getPosition() - this.f64297b.f77517g;
                    this.f64347l = this.f64345j.b();
                    throw th2;
                }
            }
            this.f64348m = jVar.getPosition() - this.f64297b.f77517g;
            this.f64347l = this.f64345j.b();
            w1.g.a(this.f64304i);
        } catch (Throwable th3) {
            w1.g.a(this.f64304i);
            throw th3;
        }
    }
}
