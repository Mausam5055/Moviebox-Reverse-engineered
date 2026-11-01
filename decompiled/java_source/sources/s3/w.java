package s3;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f75259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f75260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f75261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f75262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f75263e;

    public w(int i11, int i12) {
        this.f75259a = i11;
        byte[] bArr = new byte[i12 + 3];
        this.f75262d = bArr;
        bArr[2] = 1;
    }

    public void a(byte[] bArr, int i11, int i12) {
        if (this.f75260b) {
            int i13 = i12 - i11;
            byte[] bArr2 = this.f75262d;
            int length = bArr2.length;
            int i14 = this.f75263e;
            if (length < i14 + i13) {
                this.f75262d = Arrays.copyOf(bArr2, (i14 + i13) * 2);
            }
            System.arraycopy(bArr, i11, this.f75262d, this.f75263e, i13);
            this.f75263e += i13;
        }
    }

    public boolean b(int i11) {
        if (!this.f75260b) {
            return false;
        }
        this.f75263e -= i11;
        this.f75260b = false;
        this.f75261c = true;
        return true;
    }

    public boolean c() {
        return this.f75261c;
    }

    public void d() {
        this.f75260b = false;
        this.f75261c = false;
    }

    public void e(int i11) {
        androidx.media3.common.util.a.g(!this.f75260b);
        boolean z10 = i11 == this.f75259a;
        this.f75260b = z10;
        if (z10) {
            this.f75263e = 3;
            this.f75261c = false;
        }
    }
}
