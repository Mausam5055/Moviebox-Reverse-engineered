package com.google.firebase.encoders.proto;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
final class b extends OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f31821a = 0;

    b() {
    }

    long d() {
        return this.f31821a;
    }

    @Override // java.io.OutputStream
    public void write(int i11) {
        this.f31821a++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.f31821a += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i11, int i12) {
        int i13;
        if (i11 < 0 || i11 > bArr.length || i12 < 0 || (i13 = i11 + i12) > bArr.length || i13 < 0) {
            throw new IndexOutOfBoundsException();
        }
        this.f31821a += (long) i12;
    }
}
