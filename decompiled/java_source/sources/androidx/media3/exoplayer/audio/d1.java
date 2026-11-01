package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class d1 extends androidx.media3.common.audio.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f11148i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final short f11149j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f11150k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f11151l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final long f11152m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f11153n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f11154o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f11155p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f11156q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f11157r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private byte[] f11158s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f11159t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f11160u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private byte[] f11161v;

    public d1() {
        this(100000L, 0.2f, 2000000L, 10, (short) 1024);
    }

    public d1(long j11, float f11, long j12, int i11, short s11) {
        boolean z10 = false;
        this.f11157r = 0;
        this.f11159t = 0;
        this.f11160u = 0;
        if (f11 >= 0.0f && f11 <= 1.0f) {
            z10 = true;
        }
        androidx.media3.common.util.a.a(z10);
        this.f11151l = j11;
        this.f11148i = f11;
        this.f11152m = j12;
        this.f11150k = i11;
        this.f11149j = s11;
        byte[] bArr = androidx.media3.common.util.a1.f10355f;
        this.f11158s = bArr;
        this.f11161v = bArr;
    }

    private static int A(byte b11, byte b12) {
        return (b11 << 8) | (b12 & 255);
    }

    private int h(float f11) {
        return i((int) f11);
    }

    private int i(int i11) {
        int i12 = this.f11153n;
        return (i11 / i12) * i12;
    }

    private int j(int i11, int i12) {
        int i13 = this.f11150k;
        return i13 + ((((100 - i13) * (i11 * 1000)) / i12) / 1000);
    }

    private int k(int i11, int i12) {
        return (((this.f11150k - 100) * ((i11 * 1000) / i12)) / 1000) + 100;
    }

    private int l(int i11) {
        int iM = ((m(this.f11152m) - this.f11157r) * this.f11153n) - (this.f11158s.length / 2);
        androidx.media3.common.util.a.g(iM >= 0);
        return h(Math.min((i11 * this.f11148i) + 0.5f, iM));
    }

    private int m(long j11) {
        return (int) ((j11 * ((long) this.f9827b.f9817a)) / 1000000);
    }

    private int n(ByteBuffer byteBuffer) {
        for (int iLimit = byteBuffer.limit() - 1; iLimit >= byteBuffer.position(); iLimit -= 2) {
            if (q(byteBuffer.get(iLimit), byteBuffer.get(iLimit - 1))) {
                int i11 = this.f11153n;
                return ((iLimit / i11) * i11) + i11;
            }
        }
        return byteBuffer.position();
    }

    private int o(ByteBuffer byteBuffer) {
        for (int iPosition = byteBuffer.position() + 1; iPosition < byteBuffer.limit(); iPosition += 2) {
            if (q(byteBuffer.get(iPosition), byteBuffer.get(iPosition - 1))) {
                int i11 = this.f11153n;
                return i11 * (iPosition / i11);
            }
        }
        return byteBuffer.limit();
    }

    private boolean q(byte b11, byte b12) {
        return Math.abs(A(b11, b12)) > this.f11149j;
    }

    private void r(byte[] bArr, int i11, int i12) {
        if (i12 == 3) {
            return;
        }
        for (int i13 = 0; i13 < i11; i13 += 2) {
            x(bArr, i13, (A(bArr[i13 + 1], bArr[i13]) * (i12 == 0 ? k(i13, i11 - 1) : i12 == 2 ? j(i13, i11 - 1) : this.f11150k)) / 100);
        }
    }

    private void s(ByteBuffer byteBuffer) {
        g(byteBuffer.remaining()).put(byteBuffer).flip();
    }

    private void t(byte[] bArr, int i11, int i12) {
        androidx.media3.common.util.a.b(i11 % this.f11153n == 0, "byteOutput size is not aligned to frame size " + i11);
        r(bArr, i11, i12);
        g(i11).put(bArr, 0, i11).flip();
    }

    private void u(boolean z10) {
        int length;
        int iL;
        int i11 = this.f11160u;
        byte[] bArr = this.f11158s;
        if (i11 == bArr.length || z10) {
            if (this.f11157r == 0) {
                if (z10) {
                    v(i11, 3);
                    length = i11;
                } else {
                    androidx.media3.common.util.a.g(i11 >= bArr.length / 2);
                    length = this.f11158s.length / 2;
                    v(length, 0);
                }
                iL = length;
            } else if (z10) {
                int length2 = i11 - (bArr.length / 2);
                int length3 = (bArr.length / 2) + length2;
                int iL2 = l(length2) + (this.f11158s.length / 2);
                v(iL2, 2);
                iL = iL2;
                length = length3;
            } else {
                length = i11 - (bArr.length / 2);
                iL = l(length);
                v(iL, 1);
            }
            androidx.media3.common.util.a.h(length % this.f11153n == 0, "bytesConsumed is not aligned to frame size: %s" + length);
            androidx.media3.common.util.a.g(i11 >= iL);
            this.f11160u -= length;
            int i12 = this.f11159t + length;
            this.f11159t = i12;
            this.f11159t = i12 % this.f11158s.length;
            int i13 = this.f11157r;
            int i14 = this.f11153n;
            this.f11157r = i13 + (iL / i14);
            this.f11156q += (long) ((length - iL) / i14);
        }
    }

    private void v(int i11, int i12) {
        if (i11 == 0) {
            return;
        }
        androidx.media3.common.util.a.a(this.f11160u >= i11);
        if (i12 == 2) {
            int i13 = this.f11159t;
            int i14 = this.f11160u;
            int i15 = i13 + i14;
            byte[] bArr = this.f11158s;
            if (i15 <= bArr.length) {
                System.arraycopy(bArr, (i13 + i14) - i11, this.f11161v, 0, i11);
            } else {
                int length = i14 - (bArr.length - i13);
                if (length >= i11) {
                    System.arraycopy(bArr, length - i11, this.f11161v, 0, i11);
                } else {
                    int i16 = i11 - length;
                    System.arraycopy(bArr, bArr.length - i16, this.f11161v, 0, i16);
                    System.arraycopy(this.f11158s, 0, this.f11161v, i16, length);
                }
            }
        } else {
            int i17 = this.f11159t;
            int i18 = i17 + i11;
            byte[] bArr2 = this.f11158s;
            if (i18 <= bArr2.length) {
                System.arraycopy(bArr2, i17, this.f11161v, 0, i11);
            } else {
                int length2 = bArr2.length - i17;
                System.arraycopy(bArr2, i17, this.f11161v, 0, length2);
                System.arraycopy(this.f11158s, 0, this.f11161v, length2, i11 - length2);
            }
        }
        androidx.media3.common.util.a.b(i11 % this.f11153n == 0, "sizeToOutput is not aligned to frame size: " + i11);
        androidx.media3.common.util.a.g(this.f11159t < this.f11158s.length);
        t(this.f11161v, i11, i12);
    }

    private void w(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + this.f11158s.length));
        int iN = n(byteBuffer);
        if (iN == byteBuffer.position()) {
            this.f11155p = 1;
        } else {
            byteBuffer.limit(Math.min(iN, byteBuffer.capacity()));
            s(byteBuffer);
        }
        byteBuffer.limit(iLimit);
    }

    private static void x(byte[] bArr, int i11, int i12) {
        if (i12 >= 32767) {
            bArr[i11] = -1;
            bArr[i11 + 1] = 127;
        } else if (i12 <= -32768) {
            bArr[i11] = 0;
            bArr[i11 + 1] = -128;
        } else {
            bArr[i11] = (byte) (i12 & 255);
            bArr[i11 + 1] = (byte) (i12 >> 8);
        }
    }

    private void z(ByteBuffer byteBuffer) {
        int length;
        int i11;
        androidx.media3.common.util.a.g(this.f11159t < this.f11158s.length);
        int iLimit = byteBuffer.limit();
        int iO = o(byteBuffer);
        int iPosition = iO - byteBuffer.position();
        int i12 = this.f11159t;
        int i13 = this.f11160u;
        int i14 = i12 + i13;
        byte[] bArr = this.f11158s;
        if (i14 < bArr.length) {
            length = bArr.length - (i13 + i12);
            i11 = i12 + i13;
        } else {
            int length2 = i13 - (bArr.length - i12);
            length = i12 - length2;
            i11 = length2;
        }
        boolean z10 = iO < iLimit;
        int iMin = Math.min(iPosition, length);
        byteBuffer.limit(byteBuffer.position() + iMin);
        byteBuffer.get(this.f11158s, i11, iMin);
        int i15 = this.f11160u + iMin;
        this.f11160u = i15;
        androidx.media3.common.util.a.g(i15 <= this.f11158s.length);
        boolean z11 = z10 && iPosition < length;
        u(z11);
        if (z11) {
            this.f11155p = 0;
            this.f11157r = 0;
        }
        byteBuffer.limit(iLimit);
    }

    @Override // androidx.media3.common.audio.b
    protected AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f9819c == 2) {
            return aVar.f9817a == -1 ? AudioProcessor.a.f9816e : aVar;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // androidx.media3.common.audio.b
    public void d() {
        if (isActive()) {
            this.f11153n = this.f9827b.f9818b * 2;
            int i11 = i(m(this.f11151l) / 2) * 2;
            if (this.f11158s.length != i11) {
                this.f11158s = new byte[i11];
                this.f11161v = new byte[i11];
            }
        }
        this.f11155p = 0;
        this.f11156q = 0L;
        this.f11157r = 0;
        this.f11159t = 0;
        this.f11160u = 0;
    }

    @Override // androidx.media3.common.audio.b
    public void e() {
        if (this.f11160u > 0) {
            u(true);
            this.f11157r = 0;
        }
    }

    @Override // androidx.media3.common.audio.b
    public void f() {
        this.f11154o = false;
        byte[] bArr = androidx.media3.common.util.a1.f10355f;
        this.f11158s = bArr;
        this.f11161v = bArr;
    }

    @Override // androidx.media3.common.audio.b, androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return super.isActive() && this.f11154o;
    }

    public long p() {
        return this.f11156q;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !b()) {
            int i11 = this.f11155p;
            if (i11 == 0) {
                w(byteBuffer);
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException();
                }
                z(byteBuffer);
            }
        }
    }

    public void y(boolean z10) {
        this.f11154o = z10;
    }
}
