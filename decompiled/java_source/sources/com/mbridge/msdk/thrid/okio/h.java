package com.mbridge.msdk.thrid.okio;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class h implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f38440a;

    public h(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f38440a = sVar;
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.f38440a.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f38440a.close();
    }

    public final s d() {
        return this.f38440a;
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f38440a.toString() + ")";
    }
}
