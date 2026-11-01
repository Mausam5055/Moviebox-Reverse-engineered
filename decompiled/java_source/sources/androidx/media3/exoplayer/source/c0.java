package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.b f12725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f12726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f12727c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f12728d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f12729e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f12730f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f12731g;

    private static final class a implements androidx.media3.exoplayer.upstream.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f12732a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f12733b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public androidx.media3.exoplayer.upstream.a f12734c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public a f12735d;

        public a(long j11, int i11) {
            d(j11, i11);
        }

        @Override // androidx.media3.exoplayer.upstream.b.a
        public androidx.media3.exoplayer.upstream.a a() {
            return (androidx.media3.exoplayer.upstream.a) androidx.media3.common.util.a.e(this.f12734c);
        }

        public a b() {
            this.f12734c = null;
            a aVar = this.f12735d;
            this.f12735d = null;
            return aVar;
        }

        public void c(androidx.media3.exoplayer.upstream.a aVar, a aVar2) {
            this.f12734c = aVar;
            this.f12735d = aVar2;
        }

        public void d(long j11, int i11) {
            androidx.media3.common.util.a.g(this.f12734c == null);
            this.f12732a = j11;
            this.f12733b = j11 + ((long) i11);
        }

        public int e(long j11) {
            return ((int) (j11 - this.f12732a)) + this.f12734c.f12957b;
        }

        @Override // androidx.media3.exoplayer.upstream.b.a
        public androidx.media3.exoplayer.upstream.b.a next() {
            a aVar = this.f12735d;
            if (aVar == null || aVar.f12734c == null) {
                return null;
            }
            return aVar;
        }
    }

    public c0(androidx.media3.exoplayer.upstream.b bVar) {
        this.f12725a = bVar;
        int individualAllocationLength = bVar.getIndividualAllocationLength();
        this.f12726b = individualAllocationLength;
        this.f12727c = new androidx.media3.common.util.j0(32);
        a aVar = new a(0L, individualAllocationLength);
        this.f12728d = aVar;
        this.f12729e = aVar;
        this.f12730f = aVar;
    }

    private void a(a aVar) {
        if (aVar.f12734c == null) {
            return;
        }
        this.f12725a.a(aVar);
        aVar.b();
    }

    private static a d(a aVar, long j11) {
        while (j11 >= aVar.f12733b) {
            aVar = aVar.f12735d;
        }
        return aVar;
    }

    private void g(int i11) {
        long j11 = this.f12731g + ((long) i11);
        this.f12731g = j11;
        a aVar = this.f12730f;
        if (j11 == aVar.f12733b) {
            this.f12730f = aVar.f12735d;
        }
    }

    private int h(int i11) {
        a aVar = this.f12730f;
        if (aVar.f12734c == null) {
            aVar.c(this.f12725a.allocate(), new a(this.f12730f.f12733b, this.f12726b));
        }
        return Math.min(i11, (int) (this.f12730f.f12733b - this.f12731g));
    }

    private static a i(a aVar, long j11, ByteBuffer byteBuffer, int i11) {
        a aVarD = d(aVar, j11);
        while (i11 > 0) {
            int iMin = Math.min(i11, (int) (aVarD.f12733b - j11));
            byteBuffer.put(aVarD.f12734c.f12956a, aVarD.e(j11), iMin);
            i11 -= iMin;
            j11 += (long) iMin;
            if (j11 == aVarD.f12733b) {
                aVarD = aVarD.f12735d;
            }
        }
        return aVarD;
    }

    private static a j(a aVar, long j11, byte[] bArr, int i11) {
        a aVarD = d(aVar, j11);
        int i12 = i11;
        while (i12 > 0) {
            int iMin = Math.min(i12, (int) (aVarD.f12733b - j11));
            System.arraycopy(aVarD.f12734c.f12956a, aVarD.e(j11), bArr, i11 - i12, iMin);
            i12 -= iMin;
            j11 += (long) iMin;
            if (j11 == aVarD.f12733b) {
                aVarD = aVarD.f12735d;
            }
        }
        return aVarD;
    }

    private static a k(a aVar, DecoderInputBuffer decoderInputBuffer, e0.b bVar, androidx.media3.common.util.j0 j0Var) {
        long j11 = bVar.f12767b;
        int iP = 1;
        j0Var.S(1);
        a aVarJ = j(aVar, j11, j0Var.e(), 1);
        long j12 = j11 + 1;
        byte b11 = j0Var.e()[0];
        boolean z10 = (b11 & 128) != 0;
        int i11 = b11 & 127;
        androidx.media3.decoder.c cVar = decoderInputBuffer.f10917b;
        byte[] bArr = cVar.f10947a;
        if (bArr == null) {
            cVar.f10947a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a aVarJ2 = j(aVarJ, j12, cVar.f10947a, i11);
        long j13 = j12 + ((long) i11);
        if (z10) {
            j0Var.S(2);
            aVarJ2 = j(aVarJ2, j13, j0Var.e(), 2);
            j13 += 2;
            iP = j0Var.P();
        }
        int i12 = iP;
        int[] iArr = cVar.f10950d;
        if (iArr == null || iArr.length < i12) {
            iArr = new int[i12];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cVar.f10951e;
        if (iArr3 == null || iArr3.length < i12) {
            iArr3 = new int[i12];
        }
        int[] iArr4 = iArr3;
        if (z10) {
            int i13 = i12 * 6;
            j0Var.S(i13);
            aVarJ2 = j(aVarJ2, j13, j0Var.e(), i13);
            j13 += (long) i13;
            j0Var.W(0);
            for (int i14 = 0; i14 < i12; i14++) {
                iArr2[i14] = j0Var.P();
                iArr4[i14] = j0Var.L();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.f12766a - ((int) (j13 - bVar.f12767b));
        }
        s0.a aVar2 = (s0.a) a1.i(bVar.f12768c);
        cVar.c(i12, iArr2, iArr4, aVar2.f68680b, cVar.f10947a, aVar2.f68679a, aVar2.f68681c, aVar2.f68682d);
        long j14 = bVar.f12767b;
        int i15 = (int) (j13 - j14);
        bVar.f12767b = j14 + ((long) i15);
        bVar.f12766a -= i15;
        return aVarJ2;
    }

    private static a l(a aVar, DecoderInputBuffer decoderInputBuffer, e0.b bVar, androidx.media3.common.util.j0 j0Var) {
        if (decoderInputBuffer.e()) {
            aVar = k(aVar, decoderInputBuffer, bVar, j0Var);
        }
        if (!decoderInputBuffer.hasSupplementalData()) {
            decoderInputBuffer.b(bVar.f12766a);
            return i(aVar, bVar.f12767b, decoderInputBuffer.f10918c, bVar.f12766a);
        }
        j0Var.S(4);
        a aVarJ = j(aVar, bVar.f12767b, j0Var.e(), 4);
        int iL = j0Var.L();
        bVar.f12767b += 4;
        bVar.f12766a -= 4;
        decoderInputBuffer.b(iL);
        a aVarI = i(aVarJ, bVar.f12767b, decoderInputBuffer.f10918c, iL);
        bVar.f12767b += (long) iL;
        int i11 = bVar.f12766a - iL;
        bVar.f12766a = i11;
        decoderInputBuffer.g(i11);
        return i(aVarI, bVar.f12767b, decoderInputBuffer.f10921f, bVar.f12766a);
    }

    public void b(long j11) {
        a aVar;
        if (j11 == -1) {
            return;
        }
        while (true) {
            aVar = this.f12728d;
            if (j11 < aVar.f12733b) {
                break;
            }
            this.f12725a.b(aVar.f12734c);
            this.f12728d = this.f12728d.b();
        }
        if (this.f12729e.f12732a < aVar.f12732a) {
            this.f12729e = aVar;
        }
    }

    public void c(long j11) {
        androidx.media3.common.util.a.a(j11 <= this.f12731g);
        this.f12731g = j11;
        if (j11 != 0) {
            a aVar = this.f12728d;
            if (j11 != aVar.f12732a) {
                while (this.f12731g > aVar.f12733b) {
                    aVar = aVar.f12735d;
                }
                a aVar2 = (a) androidx.media3.common.util.a.e(aVar.f12735d);
                a(aVar2);
                a aVar3 = new a(aVar.f12733b, this.f12726b);
                aVar.f12735d = aVar3;
                if (this.f12731g == aVar.f12733b) {
                    aVar = aVar3;
                }
                this.f12730f = aVar;
                if (this.f12729e == aVar2) {
                    this.f12729e = aVar3;
                    return;
                }
                return;
            }
        }
        a(this.f12728d);
        a aVar4 = new a(this.f12731g, this.f12726b);
        this.f12728d = aVar4;
        this.f12729e = aVar4;
        this.f12730f = aVar4;
    }

    public long e() {
        return this.f12731g;
    }

    public void f(DecoderInputBuffer decoderInputBuffer, e0.b bVar) {
        l(this.f12729e, decoderInputBuffer, bVar, this.f12727c);
    }

    public void m(DecoderInputBuffer decoderInputBuffer, e0.b bVar) {
        this.f12729e = l(this.f12729e, decoderInputBuffer, bVar, this.f12727c);
    }

    public void n() {
        a(this.f12728d);
        this.f12728d.d(0L, this.f12726b);
        a aVar = this.f12728d;
        this.f12729e = aVar;
        this.f12730f = aVar;
        this.f12731g = 0L;
        this.f12725a.trim();
    }

    public void o() {
        this.f12729e = this.f12728d;
    }

    public int p(androidx.media3.common.j jVar, int i11, boolean z10) throws EOFException {
        int iH = h(i11);
        a aVar = this.f12730f;
        int i12 = jVar.read(aVar.f12734c.f12956a, aVar.e(this.f12731g), iH);
        if (i12 != -1) {
            g(i12);
            return i12;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    public void q(androidx.media3.common.util.j0 j0Var, int i11) {
        while (i11 > 0) {
            int iH = h(i11);
            a aVar = this.f12730f;
            j0Var.l(aVar.f12734c.f12956a, aVar.e(this.f12731g), iH);
            i11 -= iH;
            g(iH);
        }
    }
}
