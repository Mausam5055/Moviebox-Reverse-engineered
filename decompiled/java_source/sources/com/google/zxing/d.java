package com.google.zxing;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f32852c;

    public d(e eVar) {
        super(eVar.d(), eVar.a());
        this.f32852c = eVar;
    }

    @Override // com.google.zxing.e
    public byte[] b() {
        byte[] bArrB = this.f32852c.b();
        int iD = d() * a();
        byte[] bArr = new byte[iD];
        for (int i11 = 0; i11 < iD; i11++) {
            bArr[i11] = (byte) (255 - (bArrB[i11] & 255));
        }
        return bArr;
    }

    @Override // com.google.zxing.e
    public byte[] c(int i11, byte[] bArr) {
        byte[] bArrC = this.f32852c.c(i11, bArr);
        int iD = d();
        for (int i12 = 0; i12 < iD; i12++) {
            bArrC[i12] = (byte) (255 - (bArrC[i12] & 255));
        }
        return bArrC;
    }

    @Override // com.google.zxing.e
    public e e() {
        return this.f32852c;
    }

    @Override // com.google.zxing.e
    public boolean f() {
        return this.f32852c.f();
    }

    @Override // com.google.zxing.e
    public e g() {
        return new d(this.f32852c.g());
    }
}
