package l2;

/* JADX INFO: loaded from: classes2.dex */
public final class t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f68684a = new byte[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f68685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f68686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f68687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f68688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f68689f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f68690g;

    public void a(s0 s0Var, s0.a aVar) {
        if (this.f68686c > 0) {
            s0Var.d(this.f68687d, this.f68688e, this.f68689f, this.f68690g, aVar);
            this.f68686c = 0;
        }
    }

    public void b() {
        this.f68685b = false;
        this.f68686c = 0;
    }

    public void c(s0 s0Var, long j11, int i11, int i12, int i13, s0.a aVar) {
        androidx.media3.common.util.a.h(this.f68690g <= i12 + i13, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.f68685b) {
            int i14 = this.f68686c;
            int i15 = i14 + 1;
            this.f68686c = i15;
            if (i14 == 0) {
                this.f68687d = j11;
                this.f68688e = i11;
                this.f68689f = 0;
            }
            this.f68689f += i12;
            this.f68690g = i13;
            if (i15 >= 16) {
                a(s0Var, aVar);
            }
        }
    }

    public void d(s sVar) {
        if (this.f68685b) {
            return;
        }
        sVar.peekFully(this.f68684a, 0, 10);
        sVar.resetPeekPosition();
        if (b.j(this.f68684a) == 0) {
            return;
        }
        this.f68685b = true;
    }
}
