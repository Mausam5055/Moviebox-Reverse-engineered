package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.UdpDataSource;
import com.google.android.exoplayer2.util.p0;
import com.google.common.primitives.Ints;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class k0 implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final UdpDataSource f26434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k0 f26435b;

    public k0(long j11) {
        this.f26434a = new UdpDataSource(2000, Ints.d(j11));
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(com.google.android.exoplayer2.upstream.n nVar) {
        return this.f26434a.a(nVar);
    }

    @Override // com.google.android.exoplayer2.source.rtsp.c
    public String c() {
        int iD = d();
        com.google.android.exoplayer2.util.a.g(iD != -1);
        return p0.C("RTP/AVP;unicast;client_port=%d-%d", Integer.valueOf(iD), Integer.valueOf(iD + 1));
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        this.f26434a.close();
        k0 k0Var = this.f26435b;
        if (k0Var != null) {
            k0Var.close();
        }
    }

    @Override // com.google.android.exoplayer2.source.rtsp.c
    public int d() {
        int iD = this.f26434a.d();
        if (iD == -1) {
            return -1;
        }
        return iD;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void e(com.google.android.exoplayer2.upstream.k0 k0Var) {
        this.f26434a.e(k0Var);
    }

    public void f(k0 k0Var) {
        com.google.android.exoplayer2.util.a.a(this != k0Var);
        this.f26435b = k0Var;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.c
    public u.b g() {
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public /* synthetic */ Map getResponseHeaders() {
        return com.google.android.exoplayer2.upstream.j.a(this);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return this.f26434a.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) throws UdpDataSource.UdpDataSourceException {
        try {
            return this.f26434a.read(bArr, i11, i12);
        } catch (UdpDataSource.UdpDataSourceException e11) {
            if (e11.reason == 2002) {
                return -1;
            }
            throw e11;
        }
    }
}
