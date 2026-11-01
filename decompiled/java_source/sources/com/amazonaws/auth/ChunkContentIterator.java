package com.amazonaws.auth;

/* JADX INFO: loaded from: classes2.dex */
class ChunkContentIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f18355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f18356b;

    public ChunkContentIterator(byte[] bArr) {
        this.f18355a = bArr;
    }

    public boolean a() {
        return this.f18356b < this.f18355a.length;
    }

    public int b(byte[] bArr, int i11, int i12) {
        if (i12 == 0) {
            return 0;
        }
        if (!a()) {
            return -1;
        }
        int iMin = Math.min(this.f18355a.length - this.f18356b, i12);
        System.arraycopy(this.f18355a, this.f18356b, bArr, i11, iMin);
        this.f18356b += iMin;
        return iMin;
    }
}
