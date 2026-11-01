package androidx.media3.exoplayer.hls;

import androidx.media3.common.util.p0;
import l2.l0;
import s3.k0;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements j {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final l0 f11694f = new l0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final l2.r f11695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.r f11696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p0 f11697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i3.s.a f11698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f11699e;

    b(l2.r rVar, androidx.media3.common.r rVar2, p0 p0Var, i3.s.a aVar, boolean z10) {
        this.f11695a = rVar;
        this.f11696b = rVar2;
        this.f11697c = p0Var;
        this.f11698d = aVar;
        this.f11699e = z10;
    }

    @Override // androidx.media3.exoplayer.hls.j
    public boolean a(l2.s sVar) {
        return this.f11695a.c(sVar, f11694f) == 0;
    }

    @Override // androidx.media3.exoplayer.hls.j
    public void b(l2.t tVar) {
        this.f11695a.b(tVar);
    }

    @Override // androidx.media3.exoplayer.hls.j
    public void c() {
        this.f11695a.seek(0L, 0L);
    }

    @Override // androidx.media3.exoplayer.hls.j
    public boolean d() {
        l2.r rVarE = this.f11695a.e();
        return (rVarE instanceof k0) || (rVarE instanceof f3.h);
    }

    @Override // androidx.media3.exoplayer.hls.j
    public boolean e() {
        l2.r rVarE = this.f11695a.e();
        return (rVarE instanceof s3.h) || (rVarE instanceof s3.b) || (rVarE instanceof s3.e) || (rVarE instanceof e3.f);
    }

    @Override // androidx.media3.exoplayer.hls.j
    public j f() {
        l2.r fVar;
        androidx.media3.common.util.a.g(!d());
        androidx.media3.common.util.a.h(this.f11695a.e() == this.f11695a, "Can't recreate wrapped extractors. Outer type: " + this.f11695a.getClass());
        l2.r rVar = this.f11695a;
        if (rVar instanceof u) {
            fVar = new u(this.f11696b.f10150d, this.f11697c, this.f11698d, this.f11699e);
        } else if (rVar instanceof s3.h) {
            fVar = new s3.h();
        } else if (rVar instanceof s3.b) {
            fVar = new s3.b();
        } else if (rVar instanceof s3.e) {
            fVar = new s3.e();
        } else {
            if (!(rVar instanceof e3.f)) {
                throw new IllegalStateException("Unexpected extractor type for recreation: " + this.f11695a.getClass().getSimpleName());
            }
            fVar = new e3.f();
        }
        return new b(fVar, this.f11696b, this.f11697c, this.f11698d, this.f11699e);
    }
}
