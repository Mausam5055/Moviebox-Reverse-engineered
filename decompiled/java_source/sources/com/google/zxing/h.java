package com.google.zxing;

/* JADX INFO: loaded from: classes4.dex */
public final class h extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f32905c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f32906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f32907e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f32908f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f32909g;

    public h(byte[] bArr, int i11, int i12, int i13, int i14, int i15, int i16, boolean z10) {
        super(i15, i16);
        if (i13 + i15 > i11 || i14 + i16 > i12) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f32905c = bArr;
        this.f32906d = i11;
        this.f32907e = i12;
        this.f32908f = i13;
        this.f32909g = i14;
        if (z10) {
            h(i15, i16);
        }
    }

    private void h(int i11, int i12) {
        byte[] bArr = this.f32905c;
        int i13 = (this.f32909g * this.f32906d) + this.f32908f;
        int i14 = 0;
        while (i14 < i12) {
            int i15 = (i11 / 2) + i13;
            int i16 = (i13 + i11) - 1;
            int i17 = i13;
            while (i17 < i15) {
                byte b11 = bArr[i17];
                bArr[i17] = bArr[i16];
                bArr[i16] = b11;
                i17++;
                i16--;
            }
            i14++;
            i13 += this.f32906d;
        }
    }

    @Override // com.google.zxing.e
    public byte[] b() {
        int iD = d();
        int iA = a();
        int i11 = this.f32906d;
        if (iD == i11 && iA == this.f32907e) {
            return this.f32905c;
        }
        int i12 = iD * iA;
        byte[] bArr = new byte[i12];
        int i13 = (this.f32909g * i11) + this.f32908f;
        if (iD == i11) {
            System.arraycopy(this.f32905c, i13, bArr, 0, i12);
            return bArr;
        }
        for (int i14 = 0; i14 < iA; i14++) {
            System.arraycopy(this.f32905c, i13, bArr, i14 * iD, iD);
            i13 += this.f32906d;
        }
        return bArr;
    }

    @Override // com.google.zxing.e
    public byte[] c(int i11, byte[] bArr) {
        if (i11 < 0 || i11 >= a()) {
            throw new IllegalArgumentException("Requested row is outside the image: " + i11);
        }
        int iD = d();
        if (bArr == null || bArr.length < iD) {
            bArr = new byte[iD];
        }
        System.arraycopy(this.f32905c, ((i11 + this.f32909g) * this.f32906d) + this.f32908f, bArr, 0, iD);
        return bArr;
    }
}
