package g9;

/* JADX INFO: loaded from: classes4.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f63408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f63409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f63410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f63411d;

    public g0(byte[] bArr) {
        this.f63408a = bArr;
        this.f63409b = bArr.length;
    }

    private void a() {
        int i11;
        int i12 = this.f63410c;
        com.google.android.exoplayer2.util.a.g(i12 >= 0 && (i12 < (i11 = this.f63409b) || (i12 == i11 && this.f63411d == 0)));
    }

    public int b() {
        return (this.f63410c * 8) + this.f63411d;
    }

    public boolean c() {
        boolean z10 = (((this.f63408a[this.f63410c] & 255) >> this.f63411d) & 1) == 1;
        e(1);
        return z10;
    }

    public int d(int i11) {
        int i12 = this.f63410c;
        int iMin = Math.min(i11, 8 - this.f63411d);
        int i13 = i12 + 1;
        int i14 = ((this.f63408a[i12] & 255) >> this.f63411d) & (255 >> (8 - iMin));
        while (iMin < i11) {
            i14 |= (this.f63408a[i13] & 255) << iMin;
            iMin += 8;
            i13++;
        }
        int i15 = i14 & ((-1) >>> (32 - i11));
        e(i11);
        return i15;
    }

    public void e(int i11) {
        int i12 = i11 / 8;
        int i13 = this.f63410c + i12;
        this.f63410c = i13;
        int i14 = this.f63411d + (i11 - (i12 * 8));
        this.f63411d = i14;
        if (i14 > 7) {
            this.f63410c = i13 + 1;
            this.f63411d = i14 - 8;
        }
        a();
    }
}
