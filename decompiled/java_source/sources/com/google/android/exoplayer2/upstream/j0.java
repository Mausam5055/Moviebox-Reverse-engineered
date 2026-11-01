package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class j0 implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f27427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f27428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f27429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f27430d;

    public j0(k kVar, i iVar) {
        this.f27427a = (k) com.google.android.exoplayer2.util.a.e(kVar);
        this.f27428b = (i) com.google.android.exoplayer2.util.a.e(iVar);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(n nVar) {
        long jA = this.f27427a.a(nVar);
        this.f27430d = jA;
        if (jA == 0) {
            return 0L;
        }
        if (nVar.f27444h == -1 && jA != -1) {
            nVar = nVar.f(0L, jA);
        }
        this.f27429c = true;
        this.f27428b.a(nVar);
        return this.f27430d;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        try {
            this.f27427a.close();
        } finally {
            if (this.f27429c) {
                this.f27429c = false;
                this.f27428b.close();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f27427a.e(k0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Map getResponseHeaders() {
        return this.f27427a.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return this.f27427a.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) {
        if (this.f27430d == 0) {
            return -1;
        }
        int i13 = this.f27427a.read(bArr, i11, i12);
        if (i13 > 0) {
            this.f27428b.write(bArr, i11, i13);
            long j11 = this.f27430d;
            if (j11 != -1) {
                this.f27430d = j11 - ((long) i13);
            }
        }
        return i13;
    }
}
