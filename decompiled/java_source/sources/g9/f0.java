package g9;

/* JADX INFO: loaded from: classes4.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f63401a = new byte[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f63402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f63403c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f63404d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f63405e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f63406f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f63407g;

    public void a(e0 e0Var, e0.a aVar) {
        if (this.f63403c > 0) {
            e0Var.d(this.f63404d, this.f63405e, this.f63406f, this.f63407g, aVar);
            this.f63403c = 0;
        }
    }

    public void b() {
        this.f63402b = false;
        this.f63403c = 0;
    }

    public void c(e0 e0Var, long j11, int i11, int i12, int i13, e0.a aVar) {
        com.google.android.exoplayer2.util.a.h(this.f63407g <= i12 + i13, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.f63402b) {
            int i14 = this.f63403c;
            int i15 = i14 + 1;
            this.f63403c = i15;
            if (i14 == 0) {
                this.f63404d = j11;
                this.f63405e = i11;
                this.f63406f = 0;
            }
            this.f63406f += i12;
            this.f63407g = i13;
            if (i15 >= 16) {
                a(e0Var, aVar);
            }
        }
    }

    public void d(m mVar) {
        if (this.f63402b) {
            return;
        }
        mVar.peekFully(this.f63401a, 0, 10);
        mVar.resetPeekPosition();
        if (com.google.android.exoplayer2.audio.b.i(this.f63401a) == 0) {
            return;
        }
        this.f63402b = true;
    }
}
