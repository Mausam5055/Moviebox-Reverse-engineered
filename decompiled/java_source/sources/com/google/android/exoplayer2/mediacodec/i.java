package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.o1;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f25382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f25383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f25384c;

    i() {
    }

    private long a(long j11) {
        return this.f25382a + Math.max(0L, ((this.f25383b - 529) * 1000000) / j11);
    }

    public long b(o1 o1Var) {
        return a(o1Var.f25510z);
    }

    public void c() {
        this.f25382a = 0L;
        this.f25383b = 0L;
        this.f25384c = false;
    }

    public long d(o1 o1Var, DecoderInputBuffer decoderInputBuffer) {
        if (this.f25383b == 0) {
            this.f25382a = decoderInputBuffer.f24845e;
        }
        if (this.f25384c) {
            return decoderInputBuffer.f24845e;
        }
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(decoderInputBuffer.f24843c);
        int i11 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            i11 = (i11 << 8) | (byteBuffer.get(i12) & 255);
        }
        int iM = b0.m(i11);
        if (iM != -1) {
            long jA = a(o1Var.f25510z);
            this.f25383b += (long) iM;
            return jA;
        }
        this.f25384c = true;
        this.f25383b = 0L;
        this.f25382a = decoderInputBuffer.f24845e;
        com.google.android.exoplayer2.util.s.i("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
        return decoderInputBuffer.f24845e;
    }
}
