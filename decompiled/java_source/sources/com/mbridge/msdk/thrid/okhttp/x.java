package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class x {

    static class a extends x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f38388a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ byte[] f38389b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f38390c;

        a(s sVar, int i11, byte[] bArr, int i12) {
            this.f38388a = i11;
            this.f38389b = bArr;
            this.f38390c = i12;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.x
        public long a() {
            return this.f38388a;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.x
        public void a(com.mbridge.msdk.thrid.okio.d dVar) throws IOException {
            dVar.write(this.f38389b, this.f38390c, this.f38388a);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.x
        public s b() {
            return null;
        }
    }

    public static x a(s sVar, byte[] bArr) {
        return a(sVar, bArr, 0, bArr.length);
    }

    public static x a(s sVar, byte[] bArr, int i11, int i12) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(bArr.length, i11, i12);
        return new a(sVar, i12, bArr, i11);
    }

    public abstract long a() throws IOException;

    public abstract void a(com.mbridge.msdk.thrid.okio.d dVar) throws IOException;

    public abstract s b();
}
