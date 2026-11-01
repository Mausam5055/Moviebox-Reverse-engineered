package wd;

/* JADX INFO: loaded from: classes5.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f77643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f77644b = 0;

    b(int i11) {
        this.f77643a = new byte[i11];
    }

    private void c(int i11, boolean z10) {
        this.f77643a[i11] = z10 ? (byte) 1 : (byte) 0;
    }

    void a(boolean z10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = this.f77644b;
            this.f77644b = i13 + 1;
            c(i13, z10);
        }
    }

    byte[] b(int i11) {
        int length = this.f77643a.length * i11;
        byte[] bArr = new byte[length];
        for (int i12 = 0; i12 < length; i12++) {
            bArr[i12] = this.f77643a[i12 / i11];
        }
        return bArr;
    }
}
