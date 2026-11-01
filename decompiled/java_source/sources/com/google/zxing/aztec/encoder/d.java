package com.google.zxing.aztec.encoder;

/* JADX INFO: loaded from: classes4.dex */
final class d extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final short f32840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final short f32841d;

    d(f fVar, int i11, int i12) {
        super(fVar);
        this.f32840c = (short) i11;
        this.f32841d = (short) i12;
    }

    @Override // com.google.zxing.aztec.encoder.f
    void c(id.a aVar, byte[] bArr) {
        aVar.c(this.f32840c, this.f32841d);
    }

    public String toString() {
        short s11 = this.f32840c;
        short s12 = this.f32841d;
        return '<' + Integer.toBinaryString((s11 & ((1 << s12) - 1)) | (1 << s12) | (1 << this.f32841d)).substring(1) + '>';
    }
}
