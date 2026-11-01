package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class e0 implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f27400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PriorityTaskManager f27401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f27402c;

    public e0(k kVar, PriorityTaskManager priorityTaskManager, int i11) {
        this.f27400a = (k) com.google.android.exoplayer2.util.a.e(kVar);
        this.f27401b = (PriorityTaskManager) com.google.android.exoplayer2.util.a.e(priorityTaskManager);
        this.f27402c = i11;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(n nVar) {
        this.f27401b.c(this.f27402c);
        return this.f27400a.a(nVar);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        this.f27400a.close();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f27400a.e(k0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Map getResponseHeaders() {
        return this.f27400a.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return this.f27400a.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) {
        this.f27401b.c(this.f27402c);
        return this.f27400a.read(bArr, i11, i12);
    }
}
