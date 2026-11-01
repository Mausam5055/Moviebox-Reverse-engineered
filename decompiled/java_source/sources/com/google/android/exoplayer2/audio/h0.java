package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class h0 extends v {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f24705i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f24706j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f24707k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f24708l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f24709m = p0.f27631f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f24710n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f24711o;

    @Override // com.google.android.exoplayer2.audio.v
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f24533c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        this.f24707k = true;
        return (this.f24705i == 0 && this.f24706j == 0) ? AudioProcessor.a.f24530e : aVar;
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void d() {
        if (this.f24707k) {
            this.f24707k = false;
            int i11 = this.f24706j;
            int i12 = this.f24776b.f24534d;
            this.f24709m = new byte[i11 * i12];
            this.f24708l = this.f24705i * i12;
        }
        this.f24710n = 0;
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void e() {
        if (this.f24707k) {
            int i11 = this.f24710n;
            if (i11 > 0) {
                this.f24711o += (long) (i11 / this.f24776b.f24534d);
            }
            this.f24710n = 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void f() {
        this.f24709m = p0.f27631f;
    }

    @Override // com.google.android.exoplayer2.audio.v, com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int i11;
        if (super.isEnded() && (i11 = this.f24710n) > 0) {
            g(i11).put(this.f24709m, 0, this.f24710n).flip();
            this.f24710n = 0;
        }
        return super.getOutput();
    }

    public long h() {
        return this.f24711o;
    }

    public void i() {
        this.f24711o = 0L;
    }

    @Override // com.google.android.exoplayer2.audio.v, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        return super.isEnded() && this.f24710n == 0;
    }

    public void j(int i11, int i12) {
        this.f24705i = i11;
        this.f24706j = i12;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i11 = iLimit - iPosition;
        if (i11 == 0) {
            return;
        }
        int iMin = Math.min(i11, this.f24708l);
        this.f24711o += (long) (iMin / this.f24776b.f24534d);
        this.f24708l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.f24708l > 0) {
            return;
        }
        int i12 = i11 - iMin;
        int length = (this.f24710n + i12) - this.f24709m.length;
        ByteBuffer byteBufferG = g(length);
        int iQ = p0.q(length, 0, this.f24710n);
        byteBufferG.put(this.f24709m, 0, iQ);
        int iQ2 = p0.q(length - iQ, 0, i12);
        byteBuffer.limit(byteBuffer.position() + iQ2);
        byteBufferG.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i13 = i12 - iQ2;
        int i14 = this.f24710n - iQ;
        this.f24710n = i14;
        byte[] bArr = this.f24709m;
        System.arraycopy(bArr, iQ, bArr, 0, i14);
        byteBuffer.get(this.f24709m, this.f24710n, i13);
        this.f24710n += i13;
        byteBufferG.flip();
    }
}
