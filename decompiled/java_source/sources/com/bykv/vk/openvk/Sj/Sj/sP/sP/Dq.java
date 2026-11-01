package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes2.dex */
class Dq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RandomAccessFile f20197a;

    static class Sj extends Exception {
        Sj(Throwable th2) {
            super(th2);
        }
    }

    Dq(File file, String str) throws Sj {
        try {
            this.f20197a = new RandomAccessFile(file, str);
        } catch (FileNotFoundException e11) {
            throw new Sj(e11);
        }
    }

    int a(byte[] bArr) throws Sj {
        try {
            return this.f20197a.read(bArr);
        } catch (IOException e11) {
            throw new Sj(e11);
        }
    }

    void b() {
        f6.a.n(this.f20197a);
    }

    void c(long j11) throws Sj {
        try {
            this.f20197a.seek(j11);
        } catch (IOException e11) {
            throw new Sj(e11);
        }
    }

    void d(byte[] bArr, int i11, int i12) throws Sj {
        try {
            this.f20197a.write(bArr, i11, i12);
        } catch (IOException e11) {
            throw new Sj(e11);
        }
    }
}
