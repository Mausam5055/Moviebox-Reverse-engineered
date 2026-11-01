package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class h extends DecoderInputBuffer {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f25379i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f25380j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f25381k;

    public h() {
        super(2);
        this.f25381k = 32;
    }

    private boolean s(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (!w()) {
            return true;
        }
        if (this.f25380j >= this.f25381k || decoderInputBuffer.g() != g()) {
            return false;
        }
        ByteBuffer byteBuffer2 = decoderInputBuffer.f24843c;
        return byteBuffer2 == null || (byteBuffer = this.f24843c) == null || byteBuffer.position() + byteBuffer2.remaining() <= 3072000;
    }

    @Override // com.google.android.exoplayer2.decoder.DecoderInputBuffer, com.google.android.exoplayer2.decoder.a
    public void b() {
        super.b();
        this.f25380j = 0;
    }

    public boolean r(DecoderInputBuffer decoderInputBuffer) {
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.o());
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.f());
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.h());
        if (!s(decoderInputBuffer)) {
            return false;
        }
        int i11 = this.f25380j;
        this.f25380j = i11 + 1;
        if (i11 == 0) {
            this.f24845e = decoderInputBuffer.f24845e;
            if (decoderInputBuffer.j()) {
                k(1);
            }
        }
        if (decoderInputBuffer.g()) {
            k(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer = decoderInputBuffer.f24843c;
        if (byteBuffer != null) {
            m(byteBuffer.remaining());
            this.f24843c.put(byteBuffer);
        }
        this.f25379i = decoderInputBuffer.f24845e;
        return true;
    }

    public long t() {
        return this.f24845e;
    }

    public long u() {
        return this.f25379i;
    }

    public int v() {
        return this.f25380j;
    }

    public boolean w() {
        return this.f25380j > 0;
    }

    public void x(int i11) {
        com.google.android.exoplayer2.util.a.a(i11 > 0);
        this.f25381k = i11;
    }
}
