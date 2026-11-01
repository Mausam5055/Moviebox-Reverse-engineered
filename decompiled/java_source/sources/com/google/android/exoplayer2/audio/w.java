package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class w extends v {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f24783i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int[] f24784j;

    w() {
    }

    @Override // com.google.android.exoplayer2.audio.v
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.f24783i;
        if (iArr == null) {
            return AudioProcessor.a.f24530e;
        }
        if (aVar.f24533c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        boolean z10 = aVar.f24532b != iArr.length;
        int i11 = 0;
        while (i11 < iArr.length) {
            int i12 = iArr[i11];
            if (i12 >= aVar.f24532b) {
                throw new AudioProcessor.UnhandledAudioFormatException(aVar);
            }
            z10 |= i12 != i11;
            i11++;
        }
        return z10 ? new AudioProcessor.a(aVar.f24531a, iArr.length, 2) : AudioProcessor.a.f24530e;
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void d() {
        this.f24784j = this.f24783i;
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void f() {
        this.f24784j = null;
        this.f24783i = null;
    }

    public void h(int[] iArr) {
        this.f24783i = iArr;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) com.google.android.exoplayer2.util.a.e(this.f24784j);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferG = g(((iLimit - iPosition) / this.f24776b.f24534d) * this.f24777c.f24534d);
        while (iPosition < iLimit) {
            for (int i11 : iArr) {
                byteBufferG.putShort(byteBuffer.getShort((i11 * 2) + iPosition));
            }
            iPosition += this.f24776b.f24534d;
        }
        byteBuffer.position(iLimit);
        byteBufferG.flip();
    }
}
