package xu;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f78438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f78440c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f78441d;

    public b(boolean z10, int i11, long j11) {
        this(z10, i11, j11, i11 <= 1);
    }

    public b(boolean z10, int i11, long j11, boolean z11) {
        this.f78438a = z10;
        this.f78439b = Math.max(1, i11);
        this.f78440c = Math.max(1L, j11);
        this.f78441d = z11;
    }

    public static b a() {
        ou.a aVarS = ou.a.s();
        return new b(true, aVarS.v(), aVarS.w());
    }
}
