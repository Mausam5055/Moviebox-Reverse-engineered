package f3;

/* JADX INFO: loaded from: classes2.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f62291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f62292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f62293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f62294d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f62295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f62296f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final androidx.media3.common.r f62297g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f62298h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long[] f62299i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long[] f62300j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f62301k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final u[] f62302l;

    public t(int i11, int i12, long j11, long j12, long j13, long j14, androidx.media3.common.r rVar, int i13, u[] uVarArr, int i14, long[] jArr, long[] jArr2) {
        this.f62291a = i11;
        this.f62292b = i12;
        this.f62293c = j11;
        this.f62294d = j12;
        this.f62295e = j13;
        this.f62296f = j14;
        this.f62297g = rVar;
        this.f62298h = i13;
        this.f62302l = uVarArr;
        this.f62301k = i14;
        this.f62299i = jArr;
        this.f62300j = jArr2;
    }

    public t a(androidx.media3.common.r rVar) {
        return new t(this.f62291a, this.f62292b, this.f62293c, this.f62294d, this.f62295e, this.f62296f, rVar, this.f62298h, this.f62302l, this.f62301k, this.f62299i, this.f62300j);
    }

    public u b(int i11) {
        u[] uVarArr = this.f62302l;
        if (uVarArr == null) {
            return null;
        }
        return uVarArr[i11];
    }
}
