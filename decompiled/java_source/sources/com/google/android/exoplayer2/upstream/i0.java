package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class i0 implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f27423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f27424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Uri f27425c = Uri.EMPTY;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map f27426d = Collections.emptyMap();

    public i0(k kVar) {
        this.f27423a = (k) com.google.android.exoplayer2.util.a.e(kVar);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(n nVar) {
        this.f27425c = nVar.f27437a;
        this.f27426d = Collections.emptyMap();
        long jA = this.f27423a.a(nVar);
        this.f27425c = (Uri) com.google.android.exoplayer2.util.a.e(getUri());
        this.f27426d = getResponseHeaders();
        return jA;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        this.f27423a.close();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f27423a.e(k0Var);
    }

    public long f() {
        return this.f27424b;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Map getResponseHeaders() {
        return this.f27423a.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return this.f27423a.getUri();
    }

    public Uri h() {
        return this.f27425c;
    }

    public Map i() {
        return this.f27426d;
    }

    public void j() {
        this.f27424b = 0L;
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) {
        int i13 = this.f27423a.read(bArr, i11, i12);
        if (i13 != -1) {
            this.f27424b += (long) i13;
        }
        return i13;
    }
}
