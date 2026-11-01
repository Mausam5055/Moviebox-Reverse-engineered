package com.google.android.exoplayer2.source.hls;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.p1;
import t9.s;

/* JADX INFO: loaded from: classes3.dex */
final class l implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f26022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f26023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f26024c = -1;

    public l(p pVar, int i11) {
        this.f26023b = pVar;
        this.f26022a = i11;
    }

    private boolean b() {
        int i11 = this.f26024c;
        return (i11 == -1 || i11 == -3 || i11 == -2) ? false : true;
    }

    public void a() {
        com.google.android.exoplayer2.util.a.a(this.f26024c == -1);
        this.f26024c = this.f26023b.i(this.f26022a);
    }

    @Override // t9.s
    public int c(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (this.f26024c == -3) {
            decoderInputBuffer.a(4);
            return -4;
        }
        if (b()) {
            return this.f26023b.R(this.f26024c, p1Var, decoderInputBuffer, i11);
        }
        return -3;
    }

    public void d() {
        if (this.f26024c != -1) {
            this.f26023b.c0(this.f26022a);
            this.f26024c = -1;
        }
    }

    @Override // t9.s
    public boolean isReady() {
        return this.f26024c == -3 || (b() && this.f26023b.D(this.f26024c));
    }

    @Override // t9.s
    public void maybeThrowError() throws SampleQueueMappingException {
        int i11 = this.f26024c;
        if (i11 == -2) {
            throw new SampleQueueMappingException(this.f26023b.getTrackGroups().b(this.f26022a).c(0).f25496l);
        }
        if (i11 == -1) {
            this.f26023b.H();
        } else if (i11 != -3) {
            this.f26023b.I(i11);
        }
    }

    @Override // t9.s
    public int skipData(long j11) {
        if (b()) {
            return this.f26023b.b0(this.f26024c, j11);
        }
        return 0;
    }
}
