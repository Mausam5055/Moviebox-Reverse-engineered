package androidx.media3.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public interface u2 {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final y1.f4 f12928a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.media3.common.e0 f12929b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final androidx.media3.exoplayer.source.r.b f12930c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f12931d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f12932e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f12933f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean f12934g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f12935h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f12936i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f12937j;

        public a(y1.f4 f4Var, androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j11, long j12, float f11, boolean z10, boolean z11, long j13, long j14) {
            this.f12928a = f4Var;
            this.f12929b = e0Var;
            this.f12930c = bVar;
            this.f12931d = j11;
            this.f12932e = j12;
            this.f12933f = f11;
            this.f12934g = z10;
            this.f12935h = z11;
            this.f12936i = j13;
            this.f12937j = j14;
        }
    }

    boolean a(a aVar);

    void b(y1.f4 f4Var);

    void c(y1.f4 f4Var);

    void d(y1.f4 f4Var);

    boolean e(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j11);

    boolean f(a aVar);

    void g(a aVar, g2.z zVar, j2.z[] zVarArr);

    androidx.media3.exoplayer.upstream.b getAllocator();

    long h(y1.f4 f4Var);

    boolean i(y1.f4 f4Var);
}
