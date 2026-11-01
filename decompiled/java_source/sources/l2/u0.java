package l2;

/* JADX INFO: loaded from: classes2.dex */
public final class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f68691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f68692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f68693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f68694d;

    public u0(byte[] bArr) {
        this.f68691a = bArr;
        this.f68692b = bArr.length;
    }

    private void a() {
        int i11;
        int i12 = this.f68693c;
        androidx.media3.common.util.a.g(i12 >= 0 && (i12 < (i11 = this.f68692b) || (i12 == i11 && this.f68694d == 0)));
    }

    public int b() {
        return (this.f68693c * 8) + this.f68694d;
    }

    public boolean c() {
        boolean z10 = (((this.f68691a[this.f68693c] & 255) >> this.f68694d) & 1) == 1;
        e(1);
        return z10;
    }

    public int d(int i11) {
        int i12 = this.f68693c;
        int iMin = Math.min(i11, 8 - this.f68694d);
        int i13 = i12 + 1;
        int i14 = ((this.f68691a[i12] & 255) >> this.f68694d) & (255 >> (8 - iMin));
        while (iMin < i11) {
            i14 |= (this.f68691a[i13] & 255) << iMin;
            iMin += 8;
            i13++;
        }
        int i15 = i14 & ((-1) >>> (32 - i11));
        e(i11);
        return i15;
    }

    public void e(int i11) {
        int i12 = i11 / 8;
        int i13 = this.f68693c + i12;
        this.f68693c = i13;
        int i14 = this.f68694d + (i11 - (i12 * 8));
        this.f68694d = i14;
        if (i14 > 7) {
            this.f68693c = i13 + 1;
            this.f68694d = i14 - 8;
        }
        a();
    }
}
