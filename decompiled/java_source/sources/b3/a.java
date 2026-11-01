package b3;

import androidx.media3.common.util.j0;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f16176c;

    private a(long j11, byte[] bArr, long j12) {
        this.f16174a = j12;
        this.f16175b = j11;
        this.f16176c = bArr;
    }

    static a b(j0 j0Var, int i11, long j11) {
        long J = j0Var.J();
        int i12 = i11 - 4;
        byte[] bArr = new byte[i12];
        j0Var.l(bArr, 0, i12);
        return new a(J, bArr, j11);
    }

    @Override // b3.b
    public String toString() {
        return "SCTE-35 PrivateCommand { ptsAdjustment=" + this.f16174a + ", identifier= " + this.f16175b + " }";
    }
}
