package com.google.android.exoplayer2.source;

import android.net.Uri;
import e9.u1;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface r {

    public interface a {
        r a(u1 u1Var);
    }

    void a();

    long b();

    int c(g9.a0 a0Var);

    void d(com.google.android.exoplayer2.upstream.g gVar, Uri uri, Map map, long j11, long j12, g9.n nVar);

    void release();

    void seek(long j11, long j12);
}
