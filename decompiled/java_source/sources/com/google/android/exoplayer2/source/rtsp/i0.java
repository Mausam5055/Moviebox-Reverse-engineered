package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
final class i0 extends com.google.android.exoplayer2.upstream.f implements c, u.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LinkedBlockingQueue f26425e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f26426f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f26427g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f26428h;

    public i0(long j11) {
        super(true);
        this.f26426f = j11;
        this.f26425e = new LinkedBlockingQueue();
        this.f26427g = new byte[0];
        this.f26428h = -1;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(com.google.android.exoplayer2.upstream.n nVar) {
        this.f26428h = nVar.f27437a.getPort();
        return -1L;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.c
    public String c() {
        com.google.android.exoplayer2.util.a.g(this.f26428h != -1);
        return p0.C("RTP/AVP/TCP;unicast;interleaved=%d-%d", Integer.valueOf(this.f26428h), Integer.valueOf(this.f26428h + 1));
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
    }

    @Override // com.google.android.exoplayer2.source.rtsp.c
    public int d() {
        return this.f26428h;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.u.b
    public void f(byte[] bArr) {
        this.f26425e.add(bArr);
    }

    @Override // com.google.android.exoplayer2.source.rtsp.c
    public u.b g() {
        return this;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) {
        if (i12 == 0) {
            return 0;
        }
        int iMin = Math.min(i12, this.f26427g.length);
        System.arraycopy(this.f26427g, 0, bArr, i11, iMin);
        byte[] bArr2 = this.f26427g;
        this.f26427g = Arrays.copyOfRange(bArr2, iMin, bArr2.length);
        if (iMin == i12) {
            return iMin;
        }
        try {
            byte[] bArr3 = (byte[]) this.f26425e.poll(this.f26426f, TimeUnit.MILLISECONDS);
            if (bArr3 == null) {
                return -1;
            }
            int iMin2 = Math.min(i12 - iMin, bArr3.length);
            System.arraycopy(bArr3, 0, bArr, i11 + iMin, iMin2);
            if (iMin2 < bArr3.length) {
                this.f26427g = Arrays.copyOfRange(bArr3, iMin2, bArr3.length);
            }
            return iMin + iMin2;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return -1;
        }
    }
}
