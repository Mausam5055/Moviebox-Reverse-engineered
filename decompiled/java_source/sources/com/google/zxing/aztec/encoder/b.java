package com.google.zxing.aztec.encoder;

/* JADX INFO: loaded from: classes4.dex */
final class b extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f32837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f32838d;

    b(f fVar, int i11, int i12) {
        super(fVar);
        this.f32837c = i11;
        this.f32838d = i12;
    }

    @Override // com.google.zxing.aztec.encoder.f
    public void c(id.a aVar, byte[] bArr) {
        int i11 = this.f32838d;
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 == 0 || (i12 == 31 && i11 <= 62)) {
                aVar.c(31, 5);
                if (i11 > 62) {
                    aVar.c(i11 - 31, 16);
                } else if (i12 == 0) {
                    aVar.c(Math.min(i11, 31), 5);
                } else {
                    aVar.c(i11 - 31, 5);
                }
            }
            aVar.c(bArr[this.f32837c + i12], 8);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<");
        sb2.append(this.f32837c);
        sb2.append("::");
        sb2.append((this.f32837c + this.f32838d) - 1);
        sb2.append('>');
        return sb2.toString();
    }
}
