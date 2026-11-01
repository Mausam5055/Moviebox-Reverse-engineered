package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class f1 extends androidx.media3.common.audio.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f11174i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f11175j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f11176k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f11177l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f11178m = androidx.media3.common.util.a1.f10355f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f11179n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f11180o;

    @Override // androidx.media3.common.audio.b
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i11 = aVar.f9819c;
        if (i11 != 2 && i11 != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        this.f11176k = true;
        return (this.f11174i == 0 && this.f11175j == 0) ? AudioProcessor.a.f9816e : aVar;
    }

    @Override // androidx.media3.common.audio.b
    protected void d() {
        if (this.f11176k) {
            this.f11176k = false;
            int i11 = this.f11175j;
            int i12 = this.f9827b.f9820d;
            this.f11178m = new byte[i11 * i12];
            this.f11177l = this.f11174i * i12;
        }
        this.f11179n = 0;
    }

    @Override // androidx.media3.common.audio.b
    protected void e() {
        if (this.f11176k) {
            int i11 = this.f11179n;
            if (i11 > 0) {
                this.f11180o += (long) (i11 / this.f9827b.f9820d);
            }
            this.f11179n = 0;
        }
    }

    @Override // androidx.media3.common.audio.b
    protected void f() {
        this.f11178m = androidx.media3.common.util.a1.f10355f;
    }

    @Override // androidx.media3.common.audio.b, androidx.media3.common.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int i11;
        if (super.isEnded() && (i11 = this.f11179n) > 0) {
            g(i11).put(this.f11178m, 0, this.f11179n).flip();
            this.f11179n = 0;
        }
        return super.getOutput();
    }

    public long h() {
        return this.f11180o;
    }

    public void i() {
        this.f11180o = 0L;
    }

    @Override // androidx.media3.common.audio.b, androidx.media3.common.audio.AudioProcessor
    public boolean isEnded() {
        return super.isEnded() && this.f11179n == 0;
    }

    public void j(int i11, int i12) {
        this.f11174i = i11;
        this.f11175j = i12;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i11 = iLimit - iPosition;
        if (i11 == 0) {
            return;
        }
        int iMin = Math.min(i11, this.f11177l);
        this.f11180o += (long) (iMin / this.f9827b.f9820d);
        this.f11177l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.f11177l > 0) {
            return;
        }
        int i12 = i11 - iMin;
        int length = (this.f11179n + i12) - this.f11178m.length;
        ByteBuffer byteBufferG = g(length);
        int iP = androidx.media3.common.util.a1.p(length, 0, this.f11179n);
        byteBufferG.put(this.f11178m, 0, iP);
        int iP2 = androidx.media3.common.util.a1.p(length - iP, 0, i12);
        byteBuffer.limit(byteBuffer.position() + iP2);
        byteBufferG.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i13 = i12 - iP2;
        int i14 = this.f11179n - iP;
        this.f11179n = i14;
        byte[] bArr = this.f11178m;
        System.arraycopy(bArr, iP, bArr, 0, i14);
        byteBuffer.get(this.f11178m, this.f11179n, i13);
        this.f11179n += i13;
        byteBufferG.flip();
    }
}
