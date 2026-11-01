package com.transsion.transfer.androidasync.util;

import com.transsion.transfer.androidasync.ByteBufferList;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f55563b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f55564c = 4096;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f55562a = ByteBufferList.f55165f;

    public ByteBuffer a() {
        return b(this.f55563b);
    }

    public ByteBuffer b(int i11) {
        return ByteBufferList.t(Math.min(Math.max(i11, this.f55564c), this.f55562a));
    }

    public int c() {
        return this.f55564c;
    }

    public a d(int i11) {
        this.f55564c = Math.max(0, i11);
        return this;
    }

    public void e(long j11) {
        this.f55563b = ((int) j11) * 2;
    }
}
