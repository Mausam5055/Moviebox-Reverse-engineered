package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.w;

/* JADX INFO: loaded from: classes3.dex */
public final class j implements l.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f25385a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f25386b;

    @Override // com.google.android.exoplayer2.mediacodec.l.b
    public l a(l.a aVar) {
        int i11;
        int i12 = p0.f27626a;
        if (i12 < 23 || ((i11 = this.f25385a) != 1 && (i11 != 0 || i12 < 31))) {
            return new u.b().a(aVar);
        }
        int iL = w.l(aVar.f25394c.f25496l);
        com.google.android.exoplayer2.util.s.f("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + p0.m0(iL));
        return new b.C0367b(iL, this.f25386b).a(aVar);
    }
}
