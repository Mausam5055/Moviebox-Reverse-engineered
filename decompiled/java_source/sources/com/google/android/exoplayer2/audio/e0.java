package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class e0 extends v {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f24648i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f24649j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final short f24650k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f24651l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f24652m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f24653n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private byte[] f24654o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f24655p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f24656q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f24657r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f24658s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f24659t;

    public e0() {
        this(150000L, DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, (short) 1024);
    }

    public e0(long j11, long j12, short s11) {
        com.google.android.exoplayer2.util.a.a(j12 <= j11);
        this.f24648i = j11;
        this.f24649j = j12;
        this.f24650k = s11;
        byte[] bArr = p0.f27631f;
        this.f24653n = bArr;
        this.f24654o = bArr;
    }

    private int h(long j11) {
        return (int) ((j11 * ((long) this.f24776b.f24531a)) / 1000000);
    }

    private int i(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        do {
            iLimit -= 2;
            if (iLimit < byteBuffer.position()) {
                return byteBuffer.position();
            }
        } while (Math.abs((int) byteBuffer.getShort(iLimit)) <= this.f24650k);
        int i11 = this.f24651l;
        return ((iLimit / i11) * i11) + i11;
    }

    private int j(ByteBuffer byteBuffer) {
        for (int iPosition = byteBuffer.position(); iPosition < byteBuffer.limit(); iPosition += 2) {
            if (Math.abs((int) byteBuffer.getShort(iPosition)) > this.f24650k) {
                int i11 = this.f24651l;
                return i11 * (iPosition / i11);
            }
        }
        return byteBuffer.limit();
    }

    private void l(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        g(iRemaining).put(byteBuffer).flip();
        if (iRemaining > 0) {
            this.f24658s = true;
        }
    }

    private void m(byte[] bArr, int i11) {
        g(i11).put(bArr, 0, i11).flip();
        if (i11 > 0) {
            this.f24658s = true;
        }
    }

    private void n(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iJ = j(byteBuffer);
        int iPosition = iJ - byteBuffer.position();
        byte[] bArr = this.f24653n;
        int length = bArr.length;
        int i11 = this.f24656q;
        int i12 = length - i11;
        if (iJ < iLimit && iPosition < i12) {
            m(bArr, i11);
            this.f24656q = 0;
            this.f24655p = 0;
            return;
        }
        int iMin = Math.min(iPosition, i12);
        byteBuffer.limit(byteBuffer.position() + iMin);
        byteBuffer.get(this.f24653n, this.f24656q, iMin);
        int i13 = this.f24656q + iMin;
        this.f24656q = i13;
        byte[] bArr2 = this.f24653n;
        if (i13 == bArr2.length) {
            if (this.f24658s) {
                m(bArr2, this.f24657r);
                this.f24659t += (long) ((this.f24656q - (this.f24657r * 2)) / this.f24651l);
            } else {
                this.f24659t += (long) ((i13 - this.f24657r) / this.f24651l);
            }
            r(byteBuffer, this.f24653n, this.f24656q);
            this.f24656q = 0;
            this.f24655p = 2;
        }
        byteBuffer.limit(iLimit);
    }

    private void o(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + this.f24653n.length));
        int i11 = i(byteBuffer);
        if (i11 == byteBuffer.position()) {
            this.f24655p = 1;
        } else {
            byteBuffer.limit(i11);
            l(byteBuffer);
        }
        byteBuffer.limit(iLimit);
    }

    private void p(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iJ = j(byteBuffer);
        byteBuffer.limit(iJ);
        this.f24659t += (long) (byteBuffer.remaining() / this.f24651l);
        r(byteBuffer, this.f24654o, this.f24657r);
        if (iJ < iLimit) {
            m(this.f24654o, this.f24657r);
            this.f24655p = 0;
            byteBuffer.limit(iLimit);
        }
    }

    private void r(ByteBuffer byteBuffer, byte[] bArr, int i11) {
        int iMin = Math.min(byteBuffer.remaining(), this.f24657r);
        int i12 = this.f24657r - iMin;
        System.arraycopy(bArr, i11 - i12, this.f24654o, 0, i12);
        byteBuffer.position(byteBuffer.limit() - iMin);
        byteBuffer.get(this.f24654o, i12, iMin);
    }

    @Override // com.google.android.exoplayer2.audio.v
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f24533c == 2) {
            return this.f24652m ? aVar : AudioProcessor.a.f24530e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void d() {
        if (this.f24652m) {
            this.f24651l = this.f24776b.f24534d;
            int iH = h(this.f24648i) * this.f24651l;
            if (this.f24653n.length != iH) {
                this.f24653n = new byte[iH];
            }
            int iH2 = h(this.f24649j) * this.f24651l;
            this.f24657r = iH2;
            if (this.f24654o.length != iH2) {
                this.f24654o = new byte[iH2];
            }
        }
        this.f24655p = 0;
        this.f24659t = 0L;
        this.f24656q = 0;
        this.f24658s = false;
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void e() {
        int i11 = this.f24656q;
        if (i11 > 0) {
            m(this.f24653n, i11);
        }
        if (this.f24658s) {
            return;
        }
        this.f24659t += (long) (this.f24657r / this.f24651l);
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void f() {
        this.f24652m = false;
        this.f24657r = 0;
        byte[] bArr = p0.f27631f;
        this.f24653n = bArr;
        this.f24654o = bArr;
    }

    @Override // com.google.android.exoplayer2.audio.v, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.f24652m;
    }

    public long k() {
        return this.f24659t;
    }

    public void q(boolean z10) {
        this.f24652m = z10;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !b()) {
            int i11 = this.f24655p;
            if (i11 == 0) {
                o(byteBuffer);
            } else if (i11 == 1) {
                n(byteBuffer);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException();
                }
                p(byteBuffer);
            }
        }
    }
}
