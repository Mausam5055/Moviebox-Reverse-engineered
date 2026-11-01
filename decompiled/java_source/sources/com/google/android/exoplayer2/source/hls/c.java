package com.google.android.exoplayer2.source.hls;

/* JADX INFO: loaded from: classes3.dex */
public final class c implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k.a f25943a;

    public c(com.google.android.exoplayer2.upstream.k.a aVar) {
        this.f25943a = aVar;
    }

    @Override // com.google.android.exoplayer2.source.hls.f
    public com.google.android.exoplayer2.upstream.k a(int i11) {
        return this.f25943a.createDataSource();
    }
}
