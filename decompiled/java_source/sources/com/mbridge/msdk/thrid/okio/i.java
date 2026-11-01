package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class i extends t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t f38441e;

    public i(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f38441e = tVar;
    }

    public final i a(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f38441e = tVar;
        return this;
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public t a() {
        return this.f38441e.a();
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public t a(long j11) {
        return this.f38441e.a(j11);
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public t a(long j11, TimeUnit timeUnit) {
        return this.f38441e.a(j11, timeUnit);
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public t b() {
        return this.f38441e.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public long c() {
        return this.f38441e.c();
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public boolean d() {
        return this.f38441e.d();
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public void e() throws IOException {
        this.f38441e.e();
    }

    public final t g() {
        return this.f38441e;
    }
}
