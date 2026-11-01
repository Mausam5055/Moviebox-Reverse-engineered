package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.p0;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f26707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f26708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f26709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f26710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f26711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f26712f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f26713g;

    private static final class a implements com.google.android.exoplayer2.upstream.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f26714a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f26715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public com.google.android.exoplayer2.upstream.a f26716c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public a f26717d;

        public a(long j11, int i11) {
            d(j11, i11);
        }

        @Override // com.google.android.exoplayer2.upstream.b.a
        public com.google.android.exoplayer2.upstream.a a() {
            return (com.google.android.exoplayer2.upstream.a) com.google.android.exoplayer2.util.a.e(this.f26716c);
        }

        public a b() {
            this.f26716c = null;
            a aVar = this.f26717d;
            this.f26717d = null;
            return aVar;
        }

        public void c(com.google.android.exoplayer2.upstream.a aVar, a aVar2) {
            this.f26716c = aVar;
            this.f26717d = aVar2;
        }

        public void d(long j11, int i11) {
            com.google.android.exoplayer2.util.a.g(this.f26716c == null);
            this.f26714a = j11;
            this.f26715b = j11 + ((long) i11);
        }

        public int e(long j11) {
            return ((int) (j11 - this.f26714a)) + this.f26716c.f27270b;
        }

        @Override // com.google.android.exoplayer2.upstream.b.a
        public com.google.android.exoplayer2.upstream.b.a next() {
            a aVar = this.f26717d;
            if (aVar == null || aVar.f26716c == null) {
                return null;
            }
            return aVar;
        }
    }

    public y(com.google.android.exoplayer2.upstream.b bVar) {
        this.f26707a = bVar;
        int individualAllocationLength = bVar.getIndividualAllocationLength();
        this.f26708b = individualAllocationLength;
        this.f26709c = new com.google.android.exoplayer2.util.d0(32);
        a aVar = new a(0L, individualAllocationLength);
        this.f26710d = aVar;
        this.f26711e = aVar;
        this.f26712f = aVar;
    }

    private void a(a aVar) {
        if (aVar.f26716c == null) {
            return;
        }
        this.f26707a.a(aVar);
        aVar.b();
    }

    private static a d(a aVar, long j11) {
        while (j11 >= aVar.f26715b) {
            aVar = aVar.f26717d;
        }
        return aVar;
    }

    private void g(int i11) {
        long j11 = this.f26713g + ((long) i11);
        this.f26713g = j11;
        a aVar = this.f26712f;
        if (j11 == aVar.f26715b) {
            this.f26712f = aVar.f26717d;
        }
    }

    private int h(int i11) {
        a aVar = this.f26712f;
        if (aVar.f26716c == null) {
            aVar.c(this.f26707a.allocate(), new a(this.f26712f.f26715b, this.f26708b));
        }
        return Math.min(i11, (int) (this.f26712f.f26715b - this.f26713g));
    }

    private static a i(a aVar, long j11, ByteBuffer byteBuffer, int i11) {
        a aVarD = d(aVar, j11);
        while (i11 > 0) {
            int iMin = Math.min(i11, (int) (aVarD.f26715b - j11));
            byteBuffer.put(aVarD.f26716c.f27269a, aVarD.e(j11), iMin);
            i11 -= iMin;
            j11 += (long) iMin;
            if (j11 == aVarD.f26715b) {
                aVarD = aVarD.f26717d;
            }
        }
        return aVarD;
    }

    private static a j(a aVar, long j11, byte[] bArr, int i11) {
        a aVarD = d(aVar, j11);
        int i12 = i11;
        while (i12 > 0) {
            int iMin = Math.min(i12, (int) (aVarD.f26715b - j11));
            System.arraycopy(aVarD.f26716c.f27269a, aVarD.e(j11), bArr, i11 - i12, iMin);
            i12 -= iMin;
            j11 += (long) iMin;
            if (j11 == aVarD.f26715b) {
                aVarD = aVarD.f26717d;
            }
        }
        return aVarD;
    }

    private static a k(a aVar, DecoderInputBuffer decoderInputBuffer, a0.b bVar, com.google.android.exoplayer2.util.d0 d0Var) {
        long j11 = bVar.f25712b;
        int iJ = 1;
        d0Var.L(1);
        a aVarJ = j(aVar, j11, d0Var.d(), 1);
        long j12 = j11 + 1;
        byte b11 = d0Var.d()[0];
        boolean z10 = (b11 & 128) != 0;
        int i11 = b11 & 127;
        com.google.android.exoplayer2.decoder.c cVar = decoderInputBuffer.f24842b;
        byte[] bArr = cVar.f24863a;
        if (bArr == null) {
            cVar.f24863a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a aVarJ2 = j(aVarJ, j12, cVar.f24863a, i11);
        long j13 = j12 + ((long) i11);
        if (z10) {
            d0Var.L(2);
            aVarJ2 = j(aVarJ2, j13, d0Var.d(), 2);
            j13 += 2;
            iJ = d0Var.J();
        }
        int i12 = iJ;
        int[] iArr = cVar.f24866d;
        if (iArr == null || iArr.length < i12) {
            iArr = new int[i12];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cVar.f24867e;
        if (iArr3 == null || iArr3.length < i12) {
            iArr3 = new int[i12];
        }
        int[] iArr4 = iArr3;
        if (z10) {
            int i13 = i12 * 6;
            d0Var.L(i13);
            aVarJ2 = j(aVarJ2, j13, d0Var.d(), i13);
            j13 += (long) i13;
            d0Var.P(0);
            for (int i14 = 0; i14 < i12; i14++) {
                iArr2[i14] = d0Var.J();
                iArr4[i14] = d0Var.H();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.f25711a - ((int) (j13 - bVar.f25712b));
        }
        g9.e0.a aVar2 = (g9.e0.a) p0.j(bVar.f25713c);
        cVar.c(i12, iArr2, iArr4, aVar2.f63391b, cVar.f24863a, aVar2.f63390a, aVar2.f63392c, aVar2.f63393d);
        long j14 = bVar.f25712b;
        int i15 = (int) (j13 - j14);
        bVar.f25712b = j14 + ((long) i15);
        bVar.f25711a -= i15;
        return aVarJ2;
    }

    private static a l(a aVar, DecoderInputBuffer decoderInputBuffer, a0.b bVar, com.google.android.exoplayer2.util.d0 d0Var) {
        if (decoderInputBuffer.o()) {
            aVar = k(aVar, decoderInputBuffer, bVar, d0Var);
        }
        if (!decoderInputBuffer.f()) {
            decoderInputBuffer.m(bVar.f25711a);
            return i(aVar, bVar.f25712b, decoderInputBuffer.f24843c, bVar.f25711a);
        }
        d0Var.L(4);
        a aVarJ = j(aVar, bVar.f25712b, d0Var.d(), 4);
        int iH = d0Var.H();
        bVar.f25712b += 4;
        bVar.f25711a -= 4;
        decoderInputBuffer.m(iH);
        a aVarI = i(aVarJ, bVar.f25712b, decoderInputBuffer.f24843c, iH);
        bVar.f25712b += (long) iH;
        int i11 = bVar.f25711a - iH;
        bVar.f25711a = i11;
        decoderInputBuffer.q(i11);
        return i(aVarI, bVar.f25712b, decoderInputBuffer.f24846f, bVar.f25711a);
    }

    public void b(long j11) {
        a aVar;
        if (j11 == -1) {
            return;
        }
        while (true) {
            aVar = this.f26710d;
            if (j11 < aVar.f26715b) {
                break;
            }
            this.f26707a.b(aVar.f26716c);
            this.f26710d = this.f26710d.b();
        }
        if (this.f26711e.f26714a < aVar.f26714a) {
            this.f26711e = aVar;
        }
    }

    public void c(long j11) {
        com.google.android.exoplayer2.util.a.a(j11 <= this.f26713g);
        this.f26713g = j11;
        if (j11 != 0) {
            a aVar = this.f26710d;
            if (j11 != aVar.f26714a) {
                while (this.f26713g > aVar.f26715b) {
                    aVar = aVar.f26717d;
                }
                a aVar2 = (a) com.google.android.exoplayer2.util.a.e(aVar.f26717d);
                a(aVar2);
                a aVar3 = new a(aVar.f26715b, this.f26708b);
                aVar.f26717d = aVar3;
                if (this.f26713g == aVar.f26715b) {
                    aVar = aVar3;
                }
                this.f26712f = aVar;
                if (this.f26711e == aVar2) {
                    this.f26711e = aVar3;
                    return;
                }
                return;
            }
        }
        a(this.f26710d);
        a aVar4 = new a(this.f26713g, this.f26708b);
        this.f26710d = aVar4;
        this.f26711e = aVar4;
        this.f26712f = aVar4;
    }

    public long e() {
        return this.f26713g;
    }

    public void f(DecoderInputBuffer decoderInputBuffer, a0.b bVar) {
        l(this.f26711e, decoderInputBuffer, bVar, this.f26709c);
    }

    public void m(DecoderInputBuffer decoderInputBuffer, a0.b bVar) {
        this.f26711e = l(this.f26711e, decoderInputBuffer, bVar, this.f26709c);
    }

    public void n() {
        a(this.f26710d);
        this.f26710d.d(0L, this.f26708b);
        a aVar = this.f26710d;
        this.f26711e = aVar;
        this.f26712f = aVar;
        this.f26713g = 0L;
        this.f26707a.trim();
    }

    public void o() {
        this.f26711e = this.f26710d;
    }

    public int p(com.google.android.exoplayer2.upstream.g gVar, int i11, boolean z10) throws EOFException {
        int iH = h(i11);
        a aVar = this.f26712f;
        int i12 = gVar.read(aVar.f26716c.f27269a, aVar.e(this.f26713g), iH);
        if (i12 != -1) {
            g(i12);
            return i12;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    public void q(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
        while (i11 > 0) {
            int iH = h(i11);
            a aVar = this.f26712f;
            d0Var.j(aVar.f26716c.f27269a, aVar.e(this.f26713g), iH);
            i11 -= iH;
            g(iH);
        }
    }
}
