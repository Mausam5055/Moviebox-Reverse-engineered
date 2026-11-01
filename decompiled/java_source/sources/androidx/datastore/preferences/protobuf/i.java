package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile int f8786f = 100;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f8787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f8788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f8789c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    j f8790d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8791e;

    private static final class b extends i {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final byte[] f8792g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f8793h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f8794i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f8795j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f8796k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f8797l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f8798m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f8799n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f8800o;

        private b(byte[] bArr, int i11, int i12, boolean z10) {
            super();
            this.f8800o = Integer.MAX_VALUE;
            this.f8792g = bArr;
            this.f8794i = i12 + i11;
            this.f8796k = i11;
            this.f8797l = i11;
            this.f8793h = z10;
        }

        private void Q() {
            int i11 = this.f8794i + this.f8795j;
            this.f8794i = i11;
            int i12 = i11 - this.f8797l;
            int i13 = this.f8800o;
            if (i12 <= i13) {
                this.f8795j = 0;
                return;
            }
            int i14 = i12 - i13;
            this.f8795j = i14;
            this.f8794i = i11 - i14;
        }

        private void S() throws InvalidProtocolBufferException {
            if (this.f8794i - this.f8796k >= 10) {
                T();
            } else {
                U();
            }
        }

        private void T() throws InvalidProtocolBufferException {
            for (int i11 = 0; i11 < 10; i11++) {
                byte[] bArr = this.f8792g;
                int i12 = this.f8796k;
                this.f8796k = i12 + 1;
                if (bArr[i12] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void U() throws InvalidProtocolBufferException {
            for (int i11 = 0; i11 < 10; i11++) {
                if (J() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int A() {
            return i.c(N());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long B() {
            return i.d(O());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String C() throws InvalidProtocolBufferException {
            int iN = N();
            if (iN > 0) {
                int i11 = this.f8794i;
                int i12 = this.f8796k;
                if (iN <= i11 - i12) {
                    String str = new String(this.f8792g, i12, iN, w.f8916b);
                    this.f8796k += iN;
                    return str;
                }
            }
            if (iN == 0) {
                return "";
            }
            if (iN < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String D() throws InvalidProtocolBufferException {
            int iN = N();
            if (iN > 0) {
                int i11 = this.f8794i;
                int i12 = this.f8796k;
                if (iN <= i11 - i12) {
                    String strH = Utf8.h(this.f8792g, i12, iN);
                    this.f8796k += iN;
                    return strH;
                }
            }
            if (iN == 0) {
                return "";
            }
            if (iN <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int E() throws InvalidProtocolBufferException {
            if (f()) {
                this.f8798m = 0;
                return 0;
            }
            int iN = N();
            this.f8798m = iN;
            if (WireFormat.a(iN) != 0) {
                return this.f8798m;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int F() {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long G() {
            return O();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean H(int i11) throws InvalidProtocolBufferException {
            int iB = WireFormat.b(i11);
            if (iB == 0) {
                S();
                return true;
            }
            if (iB == 1) {
                R(8);
                return true;
            }
            if (iB == 2) {
                R(N());
                return true;
            }
            if (iB == 3) {
                I();
                a(WireFormat.c(WireFormat.a(i11), 4));
                return true;
            }
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            R(4);
            return true;
        }

        public byte J() throws InvalidProtocolBufferException {
            int i11 = this.f8796k;
            if (i11 == this.f8794i) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f8792g;
            this.f8796k = i11 + 1;
            return bArr[i11];
        }

        public byte[] K(int i11) throws InvalidProtocolBufferException {
            if (i11 > 0) {
                int i12 = this.f8794i;
                int i13 = this.f8796k;
                if (i11 <= i12 - i13) {
                    int i14 = i11 + i13;
                    this.f8796k = i14;
                    return Arrays.copyOfRange(this.f8792g, i13, i14);
                }
            }
            if (i11 > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i11 == 0) {
                return w.f8918d;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        public int L() throws InvalidProtocolBufferException {
            int i11 = this.f8796k;
            if (this.f8794i - i11 < 4) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f8792g;
            this.f8796k = i11 + 4;
            return ((bArr[i11 + 3] & 255) << 24) | (bArr[i11] & 255) | ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11 + 2] & 255) << 16);
        }

        public long M() throws InvalidProtocolBufferException {
            int i11 = this.f8796k;
            if (this.f8794i - i11 < 8) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f8792g;
            this.f8796k = i11 + 8;
            return ((((long) bArr[i11 + 7]) & 255) << 56) | (((long) bArr[i11]) & 255) | ((((long) bArr[i11 + 1]) & 255) << 8) | ((((long) bArr[i11 + 2]) & 255) << 16) | ((((long) bArr[i11 + 3]) & 255) << 24) | ((((long) bArr[i11 + 4]) & 255) << 32) | ((((long) bArr[i11 + 5]) & 255) << 40) | ((((long) bArr[i11 + 6]) & 255) << 48);
        }

        public int N() {
            int i11;
            int i12 = this.f8796k;
            int i13 = this.f8794i;
            if (i13 != i12) {
                byte[] bArr = this.f8792g;
                int i14 = i12 + 1;
                byte b11 = bArr[i12];
                if (b11 >= 0) {
                    this.f8796k = i14;
                    return b11;
                }
                if (i13 - i14 >= 9) {
                    int i15 = i12 + 2;
                    int i16 = (bArr[i14] << 7) ^ b11;
                    if (i16 < 0) {
                        i11 = i16 ^ (-128);
                    } else {
                        int i17 = i12 + 3;
                        int i18 = (bArr[i15] << 14) ^ i16;
                        if (i18 >= 0) {
                            i11 = i18 ^ 16256;
                        } else {
                            int i19 = i12 + 4;
                            int i20 = i18 ^ (bArr[i17] << 21);
                            if (i20 < 0) {
                                i11 = (-2080896) ^ i20;
                            } else {
                                i17 = i12 + 5;
                                byte b12 = bArr[i19];
                                int i21 = (i20 ^ (b12 << 28)) ^ 266354560;
                                if (b12 < 0) {
                                    i19 = i12 + 6;
                                    if (bArr[i17] < 0) {
                                        i17 = i12 + 7;
                                        if (bArr[i19] < 0) {
                                            i19 = i12 + 8;
                                            if (bArr[i17] < 0) {
                                                i17 = i12 + 9;
                                                if (bArr[i19] < 0) {
                                                    int i22 = i12 + 10;
                                                    if (bArr[i17] >= 0) {
                                                        i15 = i22;
                                                        i11 = i21;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i11 = i21;
                                }
                                i11 = i21;
                            }
                            i15 = i19;
                        }
                        i15 = i17;
                    }
                    this.f8796k = i15;
                    return i11;
                }
            }
            return (int) P();
        }

        public long O() {
            long j11;
            long j12;
            long j13;
            int i11 = this.f8796k;
            int i12 = this.f8794i;
            if (i12 != i11) {
                byte[] bArr = this.f8792g;
                int i13 = i11 + 1;
                byte b11 = bArr[i11];
                if (b11 >= 0) {
                    this.f8796k = i13;
                    return b11;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b11;
                    if (i15 < 0) {
                        j11 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << 14) ^ i15;
                        if (i17 >= 0) {
                            j11 = i17 ^ 16256;
                            i14 = i16;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << 21);
                            if (i19 < 0) {
                                long j14 = (-2080896) ^ i19;
                                i14 = i18;
                                j11 = j14;
                            } else {
                                long j15 = i19;
                                i14 = i11 + 5;
                                long j16 = j15 ^ (((long) bArr[i18]) << 28);
                                if (j16 >= 0) {
                                    j13 = 266354560;
                                } else {
                                    int i20 = i11 + 6;
                                    long j17 = j16 ^ (((long) bArr[i14]) << 35);
                                    if (j17 < 0) {
                                        j12 = -34093383808L;
                                    } else {
                                        i14 = i11 + 7;
                                        j16 = j17 ^ (((long) bArr[i20]) << 42);
                                        if (j16 >= 0) {
                                            j13 = 4363953127296L;
                                        } else {
                                            i20 = i11 + 8;
                                            j17 = j16 ^ (((long) bArr[i14]) << 49);
                                            if (j17 < 0) {
                                                j12 = -558586000294016L;
                                            } else {
                                                i14 = i11 + 9;
                                                long j18 = (j17 ^ (((long) bArr[i20]) << 56)) ^ 71499008037633920L;
                                                if (j18 < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i14] >= 0) {
                                                        i14 = i21;
                                                    }
                                                }
                                                j11 = j18;
                                            }
                                        }
                                    }
                                    j11 = j17 ^ j12;
                                    i14 = i20;
                                }
                                j11 = j16 ^ j13;
                            }
                        }
                    }
                    this.f8796k = i14;
                    return j11;
                }
            }
            return P();
        }

        long P() throws InvalidProtocolBufferException {
            long j11 = 0;
            for (int i11 = 0; i11 < 64; i11 += 7) {
                byte bJ = J();
                j11 |= ((long) (bJ & 127)) << i11;
                if ((bJ & 128) == 0) {
                    return j11;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void R(int i11) throws InvalidProtocolBufferException {
            if (i11 >= 0) {
                int i12 = this.f8794i;
                int i13 = this.f8796k;
                if (i11 <= i12 - i13) {
                    this.f8796k = i13 + i11;
                    return;
                }
            }
            if (i11 >= 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void a(int i11) throws InvalidProtocolBufferException {
            if (this.f8798m != i11) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int e() {
            return this.f8796k - this.f8797l;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean f() {
            return this.f8796k == this.f8794i;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void n(int i11) {
            this.f8800o = i11;
            Q();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int o(int i11) throws InvalidProtocolBufferException {
            if (i11 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int iE = i11 + e();
            if (iE < 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            int i12 = this.f8800o;
            if (iE > i12) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8800o = iE;
            Q();
            return i12;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean p() {
            return O() != 0;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public ByteString q() {
            int iN = N();
            if (iN > 0) {
                int i11 = this.f8794i;
                int i12 = this.f8796k;
                if (iN <= i11 - i12) {
                    ByteString byteStringWrap = (this.f8793h && this.f8799n) ? ByteString.wrap(this.f8792g, i12, iN) : ByteString.copyFrom(this.f8792g, i12, iN);
                    this.f8796k += iN;
                    return byteStringWrap;
                }
            }
            return iN == 0 ? ByteString.EMPTY : ByteString.wrap(K(iN));
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public double r() {
            return Double.longBitsToDouble(M());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int s() {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int t() {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long u() {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public float v() {
            return Float.intBitsToFloat(L());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int w() {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long x() {
            return O();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int y() {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long z() {
            return M();
        }
    }

    private static final class c extends i {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Iterable f8801g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final Iterator f8802h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private ByteBuffer f8803i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final boolean f8804j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f8805k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f8806l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f8807m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f8808n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f8809o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f8810p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f8811q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private long f8812r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private long f8813s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private long f8814t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private long f8815u;

        private c(Iterable iterable, int i11, boolean z10) {
            super();
            this.f8808n = Integer.MAX_VALUE;
            this.f8806l = i11;
            this.f8801g = iterable;
            this.f8802h = iterable.iterator();
            this.f8804j = z10;
            this.f8810p = 0;
            this.f8811q = 0;
            if (i11 != 0) {
                X();
                return;
            }
            this.f8803i = w.f8919e;
            this.f8812r = 0L;
            this.f8813s = 0L;
            this.f8815u = 0L;
            this.f8814t = 0L;
        }

        private long J() {
            return this.f8815u - this.f8812r;
        }

        private void K() throws InvalidProtocolBufferException {
            if (!this.f8802h.hasNext()) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            X();
        }

        private void M(byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException {
            if (i12 < 0 || i12 > T()) {
                if (i12 > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i12 != 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return;
            }
            int i13 = i12;
            while (i13 > 0) {
                if (J() == 0) {
                    K();
                }
                int iMin = Math.min(i13, (int) J());
                long j11 = iMin;
                k1.p(this.f8812r, bArr, (i12 - i13) + i11, j11);
                i13 -= iMin;
                this.f8812r += j11;
            }
        }

        private void S() {
            int i11 = this.f8806l + this.f8807m;
            this.f8806l = i11;
            int i12 = i11 - this.f8811q;
            int i13 = this.f8808n;
            if (i12 <= i13) {
                this.f8807m = 0;
                return;
            }
            int i14 = i12 - i13;
            this.f8807m = i14;
            this.f8806l = i11 - i14;
        }

        private int T() {
            return (int) ((((long) (this.f8806l - this.f8810p)) - this.f8812r) + this.f8813s);
        }

        private void V() throws InvalidProtocolBufferException {
            for (int i11 = 0; i11 < 10; i11++) {
                if (L() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer W(int i11, int i12) {
            int iPosition = this.f8803i.position();
            int iLimit = this.f8803i.limit();
            ByteBuffer byteBuffer = this.f8803i;
            try {
                try {
                    byteBuffer.position(i11);
                    byteBuffer.limit(i12);
                    ByteBuffer byteBufferSlice = this.f8803i.slice();
                    byteBuffer.position(iPosition);
                    byteBuffer.limit(iLimit);
                    return byteBufferSlice;
                } catch (IllegalArgumentException unused) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } catch (Throwable th2) {
                byteBuffer.position(iPosition);
                byteBuffer.limit(iLimit);
                throw th2;
            }
        }

        private void X() {
            ByteBuffer byteBuffer = (ByteBuffer) this.f8802h.next();
            this.f8803i = byteBuffer;
            this.f8810p += (int) (this.f8812r - this.f8813s);
            long jPosition = byteBuffer.position();
            this.f8812r = jPosition;
            this.f8813s = jPosition;
            this.f8815u = this.f8803i.limit();
            long jK = k1.k(this.f8803i);
            this.f8814t = jK;
            this.f8812r += jK;
            this.f8813s += jK;
            this.f8815u += jK;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int A() {
            return i.c(P());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long B() {
            return i.d(Q());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String C() throws InvalidProtocolBufferException {
            int iP = P();
            if (iP > 0) {
                long j11 = iP;
                long j12 = this.f8815u;
                long j13 = this.f8812r;
                if (j11 <= j12 - j13) {
                    byte[] bArr = new byte[iP];
                    k1.p(j13, bArr, 0L, j11);
                    String str = new String(bArr, w.f8916b);
                    this.f8812r += j11;
                    return str;
                }
            }
            if (iP > 0 && iP <= T()) {
                byte[] bArr2 = new byte[iP];
                M(bArr2, 0, iP);
                return new String(bArr2, w.f8916b);
            }
            if (iP == 0) {
                return "";
            }
            if (iP < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String D() throws InvalidProtocolBufferException {
            int iP = P();
            if (iP > 0) {
                long j11 = iP;
                long j12 = this.f8815u;
                long j13 = this.f8812r;
                if (j11 <= j12 - j13) {
                    String strG = Utf8.g(this.f8803i, (int) (j13 - this.f8813s), iP);
                    this.f8812r += j11;
                    return strG;
                }
            }
            if (iP >= 0 && iP <= T()) {
                byte[] bArr = new byte[iP];
                M(bArr, 0, iP);
                return Utf8.h(bArr, 0, iP);
            }
            if (iP == 0) {
                return "";
            }
            if (iP <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int E() throws InvalidProtocolBufferException {
            if (f()) {
                this.f8809o = 0;
                return 0;
            }
            int iP = P();
            this.f8809o = iP;
            if (WireFormat.a(iP) != 0) {
                return this.f8809o;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int F() {
            return P();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long G() {
            return Q();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean H(int i11) throws InvalidProtocolBufferException {
            int iB = WireFormat.b(i11);
            if (iB == 0) {
                V();
                return true;
            }
            if (iB == 1) {
                U(8);
                return true;
            }
            if (iB == 2) {
                U(P());
                return true;
            }
            if (iB == 3) {
                I();
                a(WireFormat.c(WireFormat.a(i11), 4));
                return true;
            }
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            U(4);
            return true;
        }

        public byte L() throws InvalidProtocolBufferException {
            if (J() == 0) {
                K();
            }
            long j11 = this.f8812r;
            this.f8812r = 1 + j11;
            return k1.w(j11);
        }

        public int N() {
            if (J() < 4) {
                return (L() & 255) | ((L() & 255) << 8) | ((L() & 255) << 16) | ((L() & 255) << 24);
            }
            long j11 = this.f8812r;
            this.f8812r = 4 + j11;
            return ((k1.w(j11 + 3) & 255) << 24) | (k1.w(j11) & 255) | ((k1.w(1 + j11) & 255) << 8) | ((k1.w(2 + j11) & 255) << 16);
        }

        public long O() throws InvalidProtocolBufferException {
            long jL;
            byte bL;
            if (J() >= 8) {
                long j11 = this.f8812r;
                this.f8812r = 8 + j11;
                jL = (((long) k1.w(j11)) & 255) | ((((long) k1.w(1 + j11)) & 255) << 8) | ((((long) k1.w(2 + j11)) & 255) << 16) | ((((long) k1.w(3 + j11)) & 255) << 24) | ((((long) k1.w(4 + j11)) & 255) << 32) | ((((long) k1.w(5 + j11)) & 255) << 40) | ((((long) k1.w(6 + j11)) & 255) << 48);
                bL = k1.w(j11 + 7);
            } else {
                jL = (((long) L()) & 255) | ((((long) L()) & 255) << 8) | ((((long) L()) & 255) << 16) | ((((long) L()) & 255) << 24) | ((((long) L()) & 255) << 32) | ((((long) L()) & 255) << 40) | ((((long) L()) & 255) << 48);
                bL = L();
            }
            return ((((long) bL) & 255) << 56) | jL;
        }

        public int P() {
            int i11;
            long j11 = this.f8812r;
            if (this.f8815u != j11) {
                long j12 = j11 + 1;
                byte bW = k1.w(j11);
                if (bW >= 0) {
                    this.f8812r++;
                    return bW;
                }
                if (this.f8815u - this.f8812r >= 10) {
                    long j13 = 2 + j11;
                    int iW = (k1.w(j12) << 7) ^ bW;
                    if (iW < 0) {
                        i11 = iW ^ (-128);
                    } else {
                        long j14 = 3 + j11;
                        int iW2 = (k1.w(j13) << 14) ^ iW;
                        if (iW2 >= 0) {
                            i11 = iW2 ^ 16256;
                        } else {
                            long j15 = 4 + j11;
                            int iW3 = iW2 ^ (k1.w(j14) << 21);
                            if (iW3 < 0) {
                                i11 = (-2080896) ^ iW3;
                            } else {
                                j14 = 5 + j11;
                                byte bW2 = k1.w(j15);
                                int i12 = (iW3 ^ (bW2 << 28)) ^ 266354560;
                                if (bW2 < 0) {
                                    j15 = 6 + j11;
                                    if (k1.w(j14) < 0) {
                                        j14 = 7 + j11;
                                        if (k1.w(j15) < 0) {
                                            j15 = 8 + j11;
                                            if (k1.w(j14) < 0) {
                                                j14 = 9 + j11;
                                                if (k1.w(j15) < 0) {
                                                    long j16 = j11 + 10;
                                                    if (k1.w(j14) >= 0) {
                                                        i11 = i12;
                                                        j13 = j16;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i11 = i12;
                                }
                                i11 = i12;
                            }
                            j13 = j15;
                        }
                        j13 = j14;
                    }
                    this.f8812r = j13;
                    return i11;
                }
            }
            return (int) R();
        }

        public long Q() {
            long j11;
            long j12;
            long j13;
            long j14 = this.f8812r;
            if (this.f8815u != j14) {
                long j15 = j14 + 1;
                byte bW = k1.w(j14);
                if (bW >= 0) {
                    this.f8812r++;
                    return bW;
                }
                if (this.f8815u - this.f8812r >= 10) {
                    long j16 = 2 + j14;
                    int iW = (k1.w(j15) << 7) ^ bW;
                    if (iW < 0) {
                        j11 = iW ^ (-128);
                    } else {
                        long j17 = 3 + j14;
                        int iW2 = (k1.w(j16) << 14) ^ iW;
                        if (iW2 >= 0) {
                            j11 = iW2 ^ 16256;
                            j16 = j17;
                        } else {
                            long j18 = 4 + j14;
                            int iW3 = iW2 ^ (k1.w(j17) << 21);
                            if (iW3 < 0) {
                                j11 = (-2080896) ^ iW3;
                                j16 = j18;
                            } else {
                                long j19 = 5 + j14;
                                long jW = (((long) k1.w(j18)) << 28) ^ ((long) iW3);
                                if (jW >= 0) {
                                    j13 = 266354560;
                                } else {
                                    long j20 = 6 + j14;
                                    long jW2 = jW ^ (((long) k1.w(j19)) << 35);
                                    if (jW2 < 0) {
                                        j12 = -34093383808L;
                                    } else {
                                        j19 = 7 + j14;
                                        jW = jW2 ^ (((long) k1.w(j20)) << 42);
                                        if (jW >= 0) {
                                            j13 = 4363953127296L;
                                        } else {
                                            j20 = 8 + j14;
                                            jW2 = jW ^ (((long) k1.w(j19)) << 49);
                                            if (jW2 < 0) {
                                                j12 = -558586000294016L;
                                            } else {
                                                j19 = 9 + j14;
                                                long jW3 = (jW2 ^ (((long) k1.w(j20)) << 56)) ^ 71499008037633920L;
                                                if (jW3 < 0) {
                                                    long j21 = j14 + 10;
                                                    if (k1.w(j19) >= 0) {
                                                        j11 = jW3;
                                                        j16 = j21;
                                                    }
                                                } else {
                                                    j11 = jW3;
                                                    j16 = j19;
                                                }
                                            }
                                        }
                                    }
                                    j11 = j12 ^ jW2;
                                    j16 = j20;
                                }
                                j11 = j13 ^ jW;
                                j16 = j19;
                            }
                        }
                    }
                    this.f8812r = j16;
                    return j11;
                }
            }
            return R();
        }

        long R() throws InvalidProtocolBufferException {
            long j11 = 0;
            for (int i11 = 0; i11 < 64; i11 += 7) {
                byte bL = L();
                j11 |= ((long) (bL & 127)) << i11;
                if ((bL & 128) == 0) {
                    return j11;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void U(int i11) throws InvalidProtocolBufferException {
            if (i11 < 0 || i11 > (((long) (this.f8806l - this.f8810p)) - this.f8812r) + this.f8813s) {
                if (i11 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            while (i11 > 0) {
                if (J() == 0) {
                    K();
                }
                int iMin = Math.min(i11, (int) J());
                i11 -= iMin;
                this.f8812r += (long) iMin;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void a(int i11) throws InvalidProtocolBufferException {
            if (this.f8809o != i11) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int e() {
            return (int) ((((long) (this.f8810p - this.f8811q)) + this.f8812r) - this.f8813s);
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean f() {
            return (((long) this.f8810p) + this.f8812r) - this.f8813s == ((long) this.f8806l);
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void n(int i11) {
            this.f8808n = i11;
            S();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int o(int i11) throws InvalidProtocolBufferException {
            if (i11 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int iE = i11 + e();
            int i12 = this.f8808n;
            if (iE > i12) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8808n = iE;
            S();
            return i12;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean p() {
            return Q() != 0;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public ByteString q() throws InvalidProtocolBufferException {
            int iP = P();
            if (iP > 0) {
                long j11 = iP;
                long j12 = this.f8815u;
                long j13 = this.f8812r;
                if (j11 <= j12 - j13) {
                    if (this.f8804j && this.f8805k) {
                        int i11 = (int) (j13 - this.f8814t);
                        ByteString byteStringWrap = ByteString.wrap(W(i11, iP + i11));
                        this.f8812r += j11;
                        return byteStringWrap;
                    }
                    byte[] bArr = new byte[iP];
                    k1.p(j13, bArr, 0L, j11);
                    this.f8812r += j11;
                    return ByteString.wrap(bArr);
                }
            }
            if (iP <= 0 || iP > T()) {
                if (iP == 0) {
                    return ByteString.EMPTY;
                }
                if (iP < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (!this.f8804j || !this.f8805k) {
                byte[] bArr2 = new byte[iP];
                M(bArr2, 0, iP);
                return ByteString.wrap(bArr2);
            }
            ArrayList arrayList = new ArrayList();
            while (iP > 0) {
                if (J() == 0) {
                    K();
                }
                int iMin = Math.min(iP, (int) J());
                int i12 = (int) (this.f8812r - this.f8814t);
                arrayList.add(ByteString.wrap(W(i12, i12 + iMin)));
                iP -= iMin;
                this.f8812r += (long) iMin;
            }
            return ByteString.copyFrom(arrayList);
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public double r() {
            return Double.longBitsToDouble(O());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int s() {
            return P();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int t() {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long u() {
            return O();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public float v() {
            return Float.intBitsToFloat(N());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int w() {
            return P();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long x() {
            return Q();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int y() {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long z() {
            return O();
        }
    }

    private static final class d extends i {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final InputStream f8816g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final byte[] f8817h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f8818i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f8819j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f8820k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f8821l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f8822m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f8823n;

        private d(InputStream inputStream, int i11) {
            super();
            this.f8823n = Integer.MAX_VALUE;
            w.b(inputStream, "input");
            this.f8816g = inputStream;
            this.f8817h = new byte[i11];
            this.f8818i = 0;
            this.f8820k = 0;
            this.f8822m = 0;
        }

        private static int J(InputStream inputStream) throws InvalidProtocolBufferException {
            try {
                return inputStream.available();
            } catch (InvalidProtocolBufferException e11) {
                e11.setThrownFromInputStream();
                throw e11;
            }
        }

        private static int K(InputStream inputStream, byte[] bArr, int i11, int i12) throws InvalidProtocolBufferException {
            try {
                return inputStream.read(bArr, i11, i12);
            } catch (InvalidProtocolBufferException e11) {
                e11.setThrownFromInputStream();
                throw e11;
            }
        }

        private ByteString L(int i11) throws IOException {
            byte[] bArrO = O(i11);
            if (bArrO != null) {
                return ByteString.copyFrom(bArrO);
            }
            int i12 = this.f8820k;
            int i13 = this.f8818i;
            int length = i13 - i12;
            this.f8822m += i13;
            this.f8820k = 0;
            this.f8818i = 0;
            List<byte[]> listP = P(i11 - length);
            byte[] bArr = new byte[i11];
            System.arraycopy(this.f8817h, i12, bArr, 0, length);
            for (byte[] bArr2 : listP) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return ByteString.wrap(bArr);
        }

        private byte[] N(int i11, boolean z10) throws IOException {
            byte[] bArrO = O(i11);
            if (bArrO != null) {
                return z10 ? (byte[]) bArrO.clone() : bArrO;
            }
            int i12 = this.f8820k;
            int i13 = this.f8818i;
            int length = i13 - i12;
            this.f8822m += i13;
            this.f8820k = 0;
            this.f8818i = 0;
            List<byte[]> listP = P(i11 - length);
            byte[] bArr = new byte[i11];
            System.arraycopy(this.f8817h, i12, bArr, 0, length);
            for (byte[] bArr2 : listP) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        private byte[] O(int i11) throws InvalidProtocolBufferException {
            if (i11 == 0) {
                return w.f8918d;
            }
            if (i11 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i12 = this.f8822m;
            int i13 = this.f8820k;
            int i14 = i12 + i13 + i11;
            if (i14 - this.f8789c > 0) {
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            int i15 = this.f8823n;
            if (i14 > i15) {
                Y((i15 - i12) - i13);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            int i16 = this.f8818i - i13;
            int i17 = i11 - i16;
            if (i17 >= 4096 && i17 > J(this.f8816g)) {
                return null;
            }
            byte[] bArr = new byte[i11];
            System.arraycopy(this.f8817h, this.f8820k, bArr, 0, i16);
            this.f8822m += this.f8818i;
            this.f8820k = 0;
            this.f8818i = 0;
            while (i16 < i11) {
                int iK = K(this.f8816g, bArr, i16, i11 - i16);
                if (iK == -1) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.f8822m += iK;
                i16 += iK;
            }
            return bArr;
        }

        private List P(int i11) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i11 > 0) {
                int iMin = Math.min(i11, 4096);
                byte[] bArr = new byte[iMin];
                int i12 = 0;
                while (i12 < iMin) {
                    int i13 = this.f8816g.read(bArr, i12, iMin - i12);
                    if (i13 == -1) {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    this.f8822m += i13;
                    i12 += i13;
                }
                i11 -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void V() {
            int i11 = this.f8818i + this.f8819j;
            this.f8818i = i11;
            int i12 = this.f8822m + i11;
            int i13 = this.f8823n;
            if (i12 <= i13) {
                this.f8819j = 0;
                return;
            }
            int i14 = i12 - i13;
            this.f8819j = i14;
            this.f8818i = i11 - i14;
        }

        private void W(int i11) throws InvalidProtocolBufferException {
            if (d0(i11)) {
                return;
            }
            if (i11 <= (this.f8789c - this.f8822m) - this.f8820k) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.sizeLimitExceeded();
        }

        private static long X(InputStream inputStream, long j11) throws InvalidProtocolBufferException {
            try {
                return inputStream.skip(j11);
            } catch (InvalidProtocolBufferException e11) {
                e11.setThrownFromInputStream();
                throw e11;
            }
        }

        private void Z(int i11) throws InvalidProtocolBufferException {
            if (i11 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i12 = this.f8822m;
            int i13 = this.f8820k;
            int i14 = i12 + i13 + i11;
            int i15 = this.f8823n;
            if (i14 > i15) {
                Y((i15 - i12) - i13);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8822m = i12 + i13;
            int i16 = this.f8818i - i13;
            this.f8818i = 0;
            this.f8820k = 0;
            while (i16 < i11) {
                try {
                    long j11 = i11 - i16;
                    long jX = X(this.f8816g, j11);
                    if (jX < 0 || jX > j11) {
                        throw new IllegalStateException(this.f8816g.getClass() + "#skip returned invalid result: " + jX + "\nThe InputStream implementation is buggy.");
                    }
                    if (jX == 0) {
                        break;
                    } else {
                        i16 += (int) jX;
                    }
                } catch (Throwable th2) {
                    this.f8822m += i16;
                    V();
                    throw th2;
                }
            }
            this.f8822m += i16;
            V();
            if (i16 >= i11) {
                return;
            }
            int i17 = this.f8818i;
            int i18 = i17 - this.f8820k;
            this.f8820k = i17;
            W(1);
            while (true) {
                int i19 = i11 - i18;
                int i20 = this.f8818i;
                if (i19 <= i20) {
                    this.f8820k = i19;
                    return;
                } else {
                    i18 += i20;
                    this.f8820k = i20;
                    W(1);
                }
            }
        }

        private void a0() throws InvalidProtocolBufferException {
            if (this.f8818i - this.f8820k >= 10) {
                b0();
            } else {
                c0();
            }
        }

        private void b0() throws InvalidProtocolBufferException {
            for (int i11 = 0; i11 < 10; i11++) {
                byte[] bArr = this.f8817h;
                int i12 = this.f8820k;
                this.f8820k = i12 + 1;
                if (bArr[i12] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void c0() throws InvalidProtocolBufferException {
            for (int i11 = 0; i11 < 10; i11++) {
                if (M() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private boolean d0(int i11) throws InvalidProtocolBufferException {
            int i12 = this.f8820k;
            int i13 = i12 + i11;
            int i14 = this.f8818i;
            if (i13 <= i14) {
                throw new IllegalStateException("refillBuffer() called when " + i11 + " bytes were already available in buffer");
            }
            int i15 = this.f8789c;
            int i16 = this.f8822m;
            if (i11 > (i15 - i16) - i12 || i16 + i12 + i11 > this.f8823n) {
                return false;
            }
            if (i12 > 0) {
                if (i14 > i12) {
                    byte[] bArr = this.f8817h;
                    System.arraycopy(bArr, i12, bArr, 0, i14 - i12);
                }
                this.f8822m += i12;
                this.f8818i -= i12;
                this.f8820k = 0;
            }
            InputStream inputStream = this.f8816g;
            byte[] bArr2 = this.f8817h;
            int i17 = this.f8818i;
            int iK = K(inputStream, bArr2, i17, Math.min(bArr2.length - i17, (this.f8789c - this.f8822m) - i17));
            if (iK == 0 || iK < -1 || iK > this.f8817h.length) {
                throw new IllegalStateException(this.f8816g.getClass() + "#read(byte[]) returned invalid result: " + iK + "\nThe InputStream implementation is buggy.");
            }
            if (iK <= 0) {
                return false;
            }
            this.f8818i += iK;
            V();
            if (this.f8818i >= i11) {
                return true;
            }
            return d0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int A() {
            return i.c(S());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long B() {
            return i.d(T());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String C() throws InvalidProtocolBufferException {
            int iS = S();
            if (iS > 0) {
                int i11 = this.f8818i;
                int i12 = this.f8820k;
                if (iS <= i11 - i12) {
                    String str = new String(this.f8817h, i12, iS, w.f8916b);
                    this.f8820k += iS;
                    return str;
                }
            }
            if (iS == 0) {
                return "";
            }
            if (iS < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (iS > this.f8818i) {
                return new String(N(iS, false), w.f8916b);
            }
            W(iS);
            String str2 = new String(this.f8817h, this.f8820k, iS, w.f8916b);
            this.f8820k += iS;
            return str2;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String D() throws IOException {
            byte[] bArrN;
            int iS = S();
            int i11 = this.f8820k;
            int i12 = this.f8818i;
            if (iS <= i12 - i11 && iS > 0) {
                bArrN = this.f8817h;
                this.f8820k = i11 + iS;
            } else {
                if (iS == 0) {
                    return "";
                }
                if (iS < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                i11 = 0;
                if (iS <= i12) {
                    W(iS);
                    bArrN = this.f8817h;
                    this.f8820k = iS;
                } else {
                    bArrN = N(iS, false);
                }
            }
            return Utf8.h(bArrN, i11, iS);
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int E() throws InvalidProtocolBufferException {
            if (f()) {
                this.f8821l = 0;
                return 0;
            }
            int iS = S();
            this.f8821l = iS;
            if (WireFormat.a(iS) != 0) {
                return this.f8821l;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int F() {
            return S();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long G() {
            return T();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean H(int i11) throws InvalidProtocolBufferException {
            int iB = WireFormat.b(i11);
            if (iB == 0) {
                a0();
                return true;
            }
            if (iB == 1) {
                Y(8);
                return true;
            }
            if (iB == 2) {
                Y(S());
                return true;
            }
            if (iB == 3) {
                I();
                a(WireFormat.c(WireFormat.a(i11), 4));
                return true;
            }
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            Y(4);
            return true;
        }

        public byte M() throws InvalidProtocolBufferException {
            if (this.f8820k == this.f8818i) {
                W(1);
            }
            byte[] bArr = this.f8817h;
            int i11 = this.f8820k;
            this.f8820k = i11 + 1;
            return bArr[i11];
        }

        public int Q() throws InvalidProtocolBufferException {
            int i11 = this.f8820k;
            if (this.f8818i - i11 < 4) {
                W(4);
                i11 = this.f8820k;
            }
            byte[] bArr = this.f8817h;
            this.f8820k = i11 + 4;
            return ((bArr[i11 + 3] & 255) << 24) | (bArr[i11] & 255) | ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11 + 2] & 255) << 16);
        }

        public long R() throws InvalidProtocolBufferException {
            int i11 = this.f8820k;
            if (this.f8818i - i11 < 8) {
                W(8);
                i11 = this.f8820k;
            }
            byte[] bArr = this.f8817h;
            this.f8820k = i11 + 8;
            return ((((long) bArr[i11 + 7]) & 255) << 56) | (((long) bArr[i11]) & 255) | ((((long) bArr[i11 + 1]) & 255) << 8) | ((((long) bArr[i11 + 2]) & 255) << 16) | ((((long) bArr[i11 + 3]) & 255) << 24) | ((((long) bArr[i11 + 4]) & 255) << 32) | ((((long) bArr[i11 + 5]) & 255) << 40) | ((((long) bArr[i11 + 6]) & 255) << 48);
        }

        public int S() {
            int i11;
            int i12 = this.f8820k;
            int i13 = this.f8818i;
            if (i13 != i12) {
                byte[] bArr = this.f8817h;
                int i14 = i12 + 1;
                byte b11 = bArr[i12];
                if (b11 >= 0) {
                    this.f8820k = i14;
                    return b11;
                }
                if (i13 - i14 >= 9) {
                    int i15 = i12 + 2;
                    int i16 = (bArr[i14] << 7) ^ b11;
                    if (i16 < 0) {
                        i11 = i16 ^ (-128);
                    } else {
                        int i17 = i12 + 3;
                        int i18 = (bArr[i15] << 14) ^ i16;
                        if (i18 >= 0) {
                            i11 = i18 ^ 16256;
                        } else {
                            int i19 = i12 + 4;
                            int i20 = i18 ^ (bArr[i17] << 21);
                            if (i20 < 0) {
                                i11 = (-2080896) ^ i20;
                            } else {
                                i17 = i12 + 5;
                                byte b12 = bArr[i19];
                                int i21 = (i20 ^ (b12 << 28)) ^ 266354560;
                                if (b12 < 0) {
                                    i19 = i12 + 6;
                                    if (bArr[i17] < 0) {
                                        i17 = i12 + 7;
                                        if (bArr[i19] < 0) {
                                            i19 = i12 + 8;
                                            if (bArr[i17] < 0) {
                                                i17 = i12 + 9;
                                                if (bArr[i19] < 0) {
                                                    int i22 = i12 + 10;
                                                    if (bArr[i17] >= 0) {
                                                        i15 = i22;
                                                        i11 = i21;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i11 = i21;
                                }
                                i11 = i21;
                            }
                            i15 = i19;
                        }
                        i15 = i17;
                    }
                    this.f8820k = i15;
                    return i11;
                }
            }
            return (int) U();
        }

        public long T() {
            long j11;
            long j12;
            long j13;
            int i11 = this.f8820k;
            int i12 = this.f8818i;
            if (i12 != i11) {
                byte[] bArr = this.f8817h;
                int i13 = i11 + 1;
                byte b11 = bArr[i11];
                if (b11 >= 0) {
                    this.f8820k = i13;
                    return b11;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b11;
                    if (i15 < 0) {
                        j11 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << 14) ^ i15;
                        if (i17 >= 0) {
                            j11 = i17 ^ 16256;
                            i14 = i16;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << 21);
                            if (i19 < 0) {
                                long j14 = (-2080896) ^ i19;
                                i14 = i18;
                                j11 = j14;
                            } else {
                                long j15 = i19;
                                i14 = i11 + 5;
                                long j16 = j15 ^ (((long) bArr[i18]) << 28);
                                if (j16 >= 0) {
                                    j13 = 266354560;
                                } else {
                                    int i20 = i11 + 6;
                                    long j17 = j16 ^ (((long) bArr[i14]) << 35);
                                    if (j17 < 0) {
                                        j12 = -34093383808L;
                                    } else {
                                        i14 = i11 + 7;
                                        j16 = j17 ^ (((long) bArr[i20]) << 42);
                                        if (j16 >= 0) {
                                            j13 = 4363953127296L;
                                        } else {
                                            i20 = i11 + 8;
                                            j17 = j16 ^ (((long) bArr[i14]) << 49);
                                            if (j17 < 0) {
                                                j12 = -558586000294016L;
                                            } else {
                                                i14 = i11 + 9;
                                                long j18 = (j17 ^ (((long) bArr[i20]) << 56)) ^ 71499008037633920L;
                                                if (j18 < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i14] >= 0) {
                                                        i14 = i21;
                                                    }
                                                }
                                                j11 = j18;
                                            }
                                        }
                                    }
                                    j11 = j17 ^ j12;
                                    i14 = i20;
                                }
                                j11 = j16 ^ j13;
                            }
                        }
                    }
                    this.f8820k = i14;
                    return j11;
                }
            }
            return U();
        }

        long U() throws InvalidProtocolBufferException {
            long j11 = 0;
            for (int i11 = 0; i11 < 64; i11 += 7) {
                byte bM = M();
                j11 |= ((long) (bM & 127)) << i11;
                if ((bM & 128) == 0) {
                    return j11;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void Y(int i11) throws InvalidProtocolBufferException {
            int i12 = this.f8818i;
            int i13 = this.f8820k;
            if (i11 > i12 - i13 || i11 < 0) {
                Z(i11);
            } else {
                this.f8820k = i13 + i11;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void a(int i11) throws InvalidProtocolBufferException {
            if (this.f8821l != i11) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int e() {
            return this.f8822m + this.f8820k;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean f() {
            return this.f8820k == this.f8818i && !d0(1);
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void n(int i11) {
            this.f8823n = i11;
            V();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int o(int i11) throws InvalidProtocolBufferException {
            if (i11 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i12 = i11 + this.f8822m + this.f8820k;
            if (i12 < 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            int i13 = this.f8823n;
            if (i12 > i13) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8823n = i12;
            V();
            return i13;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean p() {
            return T() != 0;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public ByteString q() throws InvalidProtocolBufferException {
            int iS = S();
            int i11 = this.f8818i;
            int i12 = this.f8820k;
            if (iS <= i11 - i12 && iS > 0) {
                ByteString byteStringCopyFrom = ByteString.copyFrom(this.f8817h, i12, iS);
                this.f8820k += iS;
                return byteStringCopyFrom;
            }
            if (iS == 0) {
                return ByteString.EMPTY;
            }
            if (iS >= 0) {
                return L(iS);
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public double r() {
            return Double.longBitsToDouble(R());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int s() {
            return S();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int t() {
            return Q();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long u() {
            return R();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public float v() {
            return Float.intBitsToFloat(Q());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int w() {
            return S();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long x() {
            return T();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int y() {
            return Q();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long z() {
            return R();
        }
    }

    private static final class e extends i {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ByteBuffer f8824g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f8825h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final long f8826i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f8827j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private long f8828k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private long f8829l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f8830m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f8831n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f8832o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f8833p;

        private e(ByteBuffer byteBuffer, boolean z10) {
            super();
            this.f8833p = Integer.MAX_VALUE;
            this.f8824g = byteBuffer;
            long jK = k1.k(byteBuffer);
            this.f8826i = jK;
            this.f8827j = ((long) byteBuffer.limit()) + jK;
            long jPosition = jK + ((long) byteBuffer.position());
            this.f8828k = jPosition;
            this.f8829l = jPosition;
            this.f8825h = z10;
        }

        private int J(long j11) {
            return (int) (j11 - this.f8826i);
        }

        static boolean K() {
            return k1.J();
        }

        private void R() {
            long j11 = this.f8827j + ((long) this.f8830m);
            this.f8827j = j11;
            int i11 = (int) (j11 - this.f8829l);
            int i12 = this.f8833p;
            if (i11 <= i12) {
                this.f8830m = 0;
                return;
            }
            int i13 = i11 - i12;
            this.f8830m = i13;
            this.f8827j = j11 - ((long) i13);
        }

        private int S() {
            return (int) (this.f8827j - this.f8828k);
        }

        private void U() throws InvalidProtocolBufferException {
            if (S() >= 10) {
                V();
            } else {
                W();
            }
        }

        private void V() throws InvalidProtocolBufferException {
            for (int i11 = 0; i11 < 10; i11++) {
                long j11 = this.f8828k;
                this.f8828k = 1 + j11;
                if (k1.w(j11) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void W() throws InvalidProtocolBufferException {
            for (int i11 = 0; i11 < 10; i11++) {
                if (L() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer X(long j11, long j12) {
            int iPosition = this.f8824g.position();
            int iLimit = this.f8824g.limit();
            ByteBuffer byteBuffer = this.f8824g;
            try {
                try {
                    byteBuffer.position(J(j11));
                    byteBuffer.limit(J(j12));
                    ByteBuffer byteBufferSlice = this.f8824g.slice();
                    byteBuffer.position(iPosition);
                    byteBuffer.limit(iLimit);
                    return byteBufferSlice;
                } catch (IllegalArgumentException e11) {
                    InvalidProtocolBufferException invalidProtocolBufferExceptionTruncatedMessage = InvalidProtocolBufferException.truncatedMessage();
                    invalidProtocolBufferExceptionTruncatedMessage.initCause(e11);
                    throw invalidProtocolBufferExceptionTruncatedMessage;
                }
            } catch (Throwable th2) {
                byteBuffer.position(iPosition);
                byteBuffer.limit(iLimit);
                throw th2;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int A() {
            return i.c(O());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long B() {
            return i.d(P());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String C() throws InvalidProtocolBufferException {
            int iO = O();
            if (iO <= 0 || iO > S()) {
                if (iO == 0) {
                    return "";
                }
                if (iO < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = new byte[iO];
            long j11 = iO;
            k1.p(this.f8828k, bArr, 0L, j11);
            String str = new String(bArr, w.f8916b);
            this.f8828k += j11;
            return str;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public String D() throws InvalidProtocolBufferException {
            int iO = O();
            if (iO > 0 && iO <= S()) {
                String strG = Utf8.g(this.f8824g, J(this.f8828k), iO);
                this.f8828k += (long) iO;
                return strG;
            }
            if (iO == 0) {
                return "";
            }
            if (iO <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int E() throws InvalidProtocolBufferException {
            if (f()) {
                this.f8831n = 0;
                return 0;
            }
            int iO = O();
            this.f8831n = iO;
            if (WireFormat.a(iO) != 0) {
                return this.f8831n;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int F() {
            return O();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long G() {
            return P();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean H(int i11) throws InvalidProtocolBufferException {
            int iB = WireFormat.b(i11);
            if (iB == 0) {
                U();
                return true;
            }
            if (iB == 1) {
                T(8);
                return true;
            }
            if (iB == 2) {
                T(O());
                return true;
            }
            if (iB == 3) {
                I();
                a(WireFormat.c(WireFormat.a(i11), 4));
                return true;
            }
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            T(4);
            return true;
        }

        public byte L() throws InvalidProtocolBufferException {
            long j11 = this.f8828k;
            if (j11 == this.f8827j) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8828k = 1 + j11;
            return k1.w(j11);
        }

        public int M() throws InvalidProtocolBufferException {
            long j11 = this.f8828k;
            if (this.f8827j - j11 < 4) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8828k = 4 + j11;
            return ((k1.w(j11 + 3) & 255) << 24) | (k1.w(j11) & 255) | ((k1.w(1 + j11) & 255) << 8) | ((k1.w(2 + j11) & 255) << 16);
        }

        public long N() throws InvalidProtocolBufferException {
            long j11 = this.f8828k;
            if (this.f8827j - j11 < 8) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8828k = 8 + j11;
            return ((((long) k1.w(j11 + 7)) & 255) << 56) | (((long) k1.w(j11)) & 255) | ((((long) k1.w(1 + j11)) & 255) << 8) | ((((long) k1.w(2 + j11)) & 255) << 16) | ((((long) k1.w(3 + j11)) & 255) << 24) | ((((long) k1.w(4 + j11)) & 255) << 32) | ((((long) k1.w(5 + j11)) & 255) << 40) | ((((long) k1.w(6 + j11)) & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.w(r3) < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int O() {
            int i11;
            long j11 = this.f8828k;
            if (this.f8827j != j11) {
                long j12 = 1 + j11;
                byte bW = k1.w(j11);
                if (bW >= 0) {
                    this.f8828k = j12;
                    return bW;
                }
                if (this.f8827j - j12 >= 9) {
                    long j13 = 2 + j11;
                    int iW = (k1.w(j12) << 7) ^ bW;
                    if (iW < 0) {
                        i11 = iW ^ (-128);
                    } else {
                        long j14 = 3 + j11;
                        int iW2 = iW ^ (k1.w(j13) << 14);
                        if (iW2 >= 0) {
                            i11 = iW2 ^ 16256;
                        } else {
                            j13 = 4 + j11;
                            int iW3 = iW2 ^ (k1.w(j14) << 21);
                            if (iW3 < 0) {
                                i11 = (-2080896) ^ iW3;
                            } else {
                                j14 = 5 + j11;
                                byte bW2 = k1.w(j13);
                                int i12 = (iW3 ^ (bW2 << 28)) ^ 266354560;
                                if (bW2 < 0) {
                                    j13 = 6 + j11;
                                    if (k1.w(j14) < 0) {
                                        j14 = 7 + j11;
                                        if (k1.w(j13) < 0) {
                                            j13 = 8 + j11;
                                            if (k1.w(j14) < 0) {
                                                j14 = j11 + 9;
                                                if (k1.w(j13) < 0) {
                                                    j13 = 10 + j11;
                                                }
                                            }
                                        }
                                    }
                                    i11 = i12;
                                }
                                i11 = i12;
                            }
                        }
                        j13 = j14;
                    }
                    this.f8828k = j13;
                    return i11;
                }
            }
            return (int) Q();
        }

        public long P() {
            long j11;
            long j12;
            long j13;
            int i11;
            long j14 = this.f8828k;
            if (this.f8827j != j14) {
                long j15 = 1 + j14;
                byte bW = k1.w(j14);
                if (bW >= 0) {
                    this.f8828k = j15;
                    return bW;
                }
                if (this.f8827j - j15 >= 9) {
                    long j16 = 2 + j14;
                    int iW = (k1.w(j15) << 7) ^ bW;
                    if (iW >= 0) {
                        long j17 = 3 + j14;
                        int iW2 = iW ^ (k1.w(j16) << 14);
                        if (iW2 >= 0) {
                            j11 = iW2 ^ 16256;
                            j16 = j17;
                        } else {
                            j16 = 4 + j14;
                            int iW3 = iW2 ^ (k1.w(j17) << 21);
                            if (iW3 < 0) {
                                i11 = (-2080896) ^ iW3;
                            } else {
                                long j18 = 5 + j14;
                                long jW = ((long) iW3) ^ (((long) k1.w(j16)) << 28);
                                if (jW >= 0) {
                                    j13 = 266354560;
                                } else {
                                    long j19 = 6 + j14;
                                    long jW2 = jW ^ (((long) k1.w(j18)) << 35);
                                    if (jW2 < 0) {
                                        j12 = -34093383808L;
                                    } else {
                                        j18 = 7 + j14;
                                        jW = jW2 ^ (((long) k1.w(j19)) << 42);
                                        if (jW >= 0) {
                                            j13 = 4363953127296L;
                                        } else {
                                            j19 = 8 + j14;
                                            jW2 = jW ^ (((long) k1.w(j18)) << 49);
                                            if (jW2 < 0) {
                                                j12 = -558586000294016L;
                                            } else {
                                                long j20 = j14 + 9;
                                                long jW3 = (jW2 ^ (((long) k1.w(j19)) << 56)) ^ 71499008037633920L;
                                                if (jW3 < 0) {
                                                    long j21 = j14 + 10;
                                                    if (k1.w(j20) >= 0) {
                                                        j16 = j21;
                                                        j11 = jW3;
                                                    }
                                                } else {
                                                    j11 = jW3;
                                                    j16 = j20;
                                                }
                                            }
                                        }
                                    }
                                    j11 = j12 ^ jW2;
                                    j16 = j19;
                                }
                                j11 = j13 ^ jW;
                                j16 = j18;
                            }
                        }
                        this.f8828k = j16;
                        return j11;
                    }
                    i11 = iW ^ (-128);
                    j11 = i11;
                    this.f8828k = j16;
                    return j11;
                }
            }
            return Q();
        }

        long Q() throws InvalidProtocolBufferException {
            long j11 = 0;
            for (int i11 = 0; i11 < 64; i11 += 7) {
                byte bL = L();
                j11 |= ((long) (bL & 127)) << i11;
                if ((bL & 128) == 0) {
                    return j11;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void T(int i11) throws InvalidProtocolBufferException {
            if (i11 >= 0 && i11 <= S()) {
                this.f8828k += (long) i11;
            } else {
                if (i11 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void a(int i11) throws InvalidProtocolBufferException {
            if (this.f8831n != i11) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int e() {
            return (int) (this.f8828k - this.f8829l);
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean f() {
            return this.f8828k == this.f8827j;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public void n(int i11) {
            this.f8833p = i11;
            R();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int o(int i11) throws InvalidProtocolBufferException {
            if (i11 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int iE = i11 + e();
            int i12 = this.f8833p;
            if (iE > i12) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8833p = iE;
            R();
            return i12;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public boolean p() {
            return P() != 0;
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public ByteString q() throws InvalidProtocolBufferException {
            int iO = O();
            if (iO <= 0 || iO > S()) {
                if (iO == 0) {
                    return ByteString.EMPTY;
                }
                if (iO < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (this.f8825h && this.f8832o) {
                long j11 = this.f8828k;
                long j12 = iO;
                ByteBuffer byteBufferX = X(j11, j11 + j12);
                this.f8828k += j12;
                return ByteString.wrap(byteBufferX);
            }
            byte[] bArr = new byte[iO];
            long j13 = iO;
            k1.p(this.f8828k, bArr, 0L, j13);
            this.f8828k += j13;
            return ByteString.wrap(bArr);
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public double r() {
            return Double.longBitsToDouble(N());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int s() {
            return O();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int t() {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long u() {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public float v() {
            return Float.intBitsToFloat(M());
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int w() {
            return O();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long x() {
            return P();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public int y() {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.i
        public long z() {
            return N();
        }
    }

    private i() {
        this.f8788b = f8786f;
        this.f8789c = Integer.MAX_VALUE;
        this.f8791e = false;
    }

    public static int c(int i11) {
        return (-(i11 & 1)) ^ (i11 >>> 1);
    }

    public static long d(long j11) {
        return (-(j11 & 1)) ^ (j11 >>> 1);
    }

    public static i g(InputStream inputStream) {
        return h(inputStream, 4096);
    }

    public static i h(InputStream inputStream, int i11) {
        if (i11 > 0) {
            return inputStream == null ? k(w.f8918d) : new d(inputStream, i11);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    static i i(Iterable iterable, boolean z10) {
        Iterator it = iterable.iterator();
        int i11 = 0;
        int iRemaining = 0;
        while (it.hasNext()) {
            ByteBuffer byteBuffer = (ByteBuffer) it.next();
            iRemaining += byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                i11 |= 1;
            } else {
                i11 = byteBuffer.isDirect() ? i11 | 2 : i11 | 4;
            }
        }
        return i11 == 2 ? new c(iterable, iRemaining, z10) : g(new x(iterable));
    }

    static i j(ByteBuffer byteBuffer, boolean z10) {
        if (byteBuffer.hasArray()) {
            return m(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z10);
        }
        if (byteBuffer.isDirect() && e.K()) {
            return new e(byteBuffer, z10);
        }
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = new byte[iRemaining];
        byteBuffer.duplicate().get(bArr);
        return m(bArr, 0, iRemaining, true);
    }

    public static i k(byte[] bArr) {
        return l(bArr, 0, bArr.length);
    }

    public static i l(byte[] bArr, int i11, int i12) {
        return m(bArr, i11, i12, false);
    }

    static i m(byte[] bArr, int i11, int i12, boolean z10) {
        b bVar = new b(bArr, i11, i12, z10);
        try {
            bVar.o(i12);
            return bVar;
        } catch (InvalidProtocolBufferException e11) {
            throw new IllegalArgumentException(e11);
        }
    }

    public abstract int A();

    public abstract long B();

    public abstract String C();

    public abstract String D();

    public abstract int E();

    public abstract int F();

    public abstract long G();

    public abstract boolean H(int i11);

    public void I() throws InvalidProtocolBufferException {
        boolean zH;
        do {
            int iE = E();
            if (iE == 0) {
                return;
            }
            b();
            this.f8787a++;
            zH = H(iE);
            this.f8787a--;
        } while (zH);
    }

    public abstract void a(int i11);

    public void b() throws InvalidProtocolBufferException {
        if (this.f8787a >= this.f8788b) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
    }

    public abstract int e();

    public abstract boolean f();

    public abstract void n(int i11);

    public abstract int o(int i11);

    public abstract boolean p();

    public abstract ByteString q();

    public abstract double r();

    public abstract int s();

    public abstract int t();

    public abstract long u();

    public abstract float v();

    public abstract int w();

    public abstract long x();

    public abstract int y();

    public abstract long z();
}
