package com.mbridge.msdk.thrid.okhttp;

import java.io.Closeable;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public abstract class z implements Closeable {

    static class a extends z {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f38416a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.thrid.okio.e f38417b;

        a(s sVar, long j11, com.mbridge.msdk.thrid.okio.e eVar) {
            this.f38416a = j11;
            this.f38417b = eVar;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.z
        public long h() {
            return this.f38416a;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.z
        public com.mbridge.msdk.thrid.okio.e k() {
            return this.f38417b;
        }
    }

    public static z a(s sVar, long j11, com.mbridge.msdk.thrid.okio.e eVar) {
        if (eVar != null) {
            return new a(sVar, j11, eVar);
        }
        throw new NullPointerException("source == null");
    }

    public static z a(s sVar, byte[] bArr) {
        return a(sVar, bArr.length, new com.mbridge.msdk.thrid.okio.c().write(bArr));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.mbridge.msdk.thrid.okhttp.internal.c.a(k());
    }

    public final InputStream d() {
        return k().j();
    }

    public abstract long h();

    public abstract com.mbridge.msdk.thrid.okio.e k();
}
