package q9;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f73507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f73508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f73509c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f73510d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73511e;

    public u(int i11, int i12) {
        this.f73507a = i11;
        byte[] bArr = new byte[i12 + 3];
        this.f73510d = bArr;
        bArr[2] = 1;
    }

    public void a(byte[] bArr, int i11, int i12) {
        if (this.f73508b) {
            int i13 = i12 - i11;
            byte[] bArr2 = this.f73510d;
            int length = bArr2.length;
            int i14 = this.f73511e;
            if (length < i14 + i13) {
                this.f73510d = Arrays.copyOf(bArr2, (i14 + i13) * 2);
            }
            System.arraycopy(bArr, i11, this.f73510d, this.f73511e, i13);
            this.f73511e += i13;
        }
    }

    public boolean b(int i11) {
        if (!this.f73508b) {
            return false;
        }
        this.f73511e -= i11;
        this.f73508b = false;
        this.f73509c = true;
        return true;
    }

    public boolean c() {
        return this.f73509c;
    }

    public void d() {
        this.f73508b = false;
        this.f73509c = false;
    }

    public void e(int i11) {
        com.google.android.exoplayer2.util.a.g(!this.f73508b);
        boolean z10 = i11 == this.f73507a;
        this.f73508b = z10;
        if (z10) {
            this.f73511e = 3;
            this.f73509c = false;
        }
    }
}
