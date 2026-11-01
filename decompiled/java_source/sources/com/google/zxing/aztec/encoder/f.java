package com.google.zxing.aztec.encoder;

/* JADX INFO: loaded from: classes4.dex */
abstract class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final f f32848b = new d(null, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f32849a;

    f(f fVar) {
        this.f32849a = fVar;
    }

    final f a(int i11, int i12) {
        return new d(this, i11, i12);
    }

    final f b(int i11, int i12) {
        return new b(this, i11, i12);
    }

    abstract void c(id.a aVar, byte[] bArr);

    final f d() {
        return this.f32849a;
    }
}
