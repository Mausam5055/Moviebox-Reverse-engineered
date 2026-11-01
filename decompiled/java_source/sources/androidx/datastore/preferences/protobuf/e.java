package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile int f8744a = 100;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f8745a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f8746b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f8747c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final o f8748d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f8749e;

        a(o oVar) {
            oVar.getClass();
            this.f8748d = oVar;
        }
    }

    static int A(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) {
        v vVar = (v) dVar;
        int I = I(bArr, i12, aVar);
        vVar.addInt(i.c(aVar.f8745a));
        while (I < i13) {
            int I2 = I(bArr, I, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            I = I(bArr, I2, aVar);
            vVar.addInt(i.c(aVar.f8745a));
        }
        return I;
    }

    static int B(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        int iL = L(bArr, i12, aVar);
        f0Var.addLong(i.d(aVar.f8746b));
        while (iL < i13) {
            int I = I(bArr, iL, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            iL = L(bArr, I, aVar);
            f0Var.addLong(i.d(aVar.f8746b));
        }
        return iL;
    }

    static int C(byte[] bArr, int i11, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a;
        if (i12 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i12 == 0) {
            aVar.f8747c = "";
            return I;
        }
        aVar.f8747c = new String(bArr, I, i12, w.f8916b);
        return I + i12;
    }

    static int D(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i12, aVar);
        int i14 = aVar.f8745a;
        if (i14 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i14 == 0) {
            dVar.add("");
        } else {
            dVar.add(new String(bArr, I, i14, w.f8916b));
            I += i14;
        }
        while (I < i13) {
            int I2 = I(bArr, I, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            I = I(bArr, I2, aVar);
            int i15 = aVar.f8745a;
            if (i15 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i15 == 0) {
                dVar.add("");
            } else {
                dVar.add(new String(bArr, I, i15, w.f8916b));
                I += i15;
            }
        }
        return I;
    }

    static int E(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i12, aVar);
        int i14 = aVar.f8745a;
        if (i14 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i14 == 0) {
            dVar.add("");
        } else {
            int i15 = I + i14;
            if (!Utf8.s(bArr, I, i15)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            dVar.add(new String(bArr, I, i14, w.f8916b));
            I = i15;
        }
        while (I < i13) {
            int I2 = I(bArr, I, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            I = I(bArr, I2, aVar);
            int i16 = aVar.f8745a;
            if (i16 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i16 == 0) {
                dVar.add("");
            } else {
                int i17 = I + i16;
                if (!Utf8.s(bArr, I, i17)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
                dVar.add(new String(bArr, I, i16, w.f8916b));
                I = i17;
            }
        }
        return I;
    }

    static int F(byte[] bArr, int i11, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a;
        if (i12 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i12 == 0) {
            aVar.f8747c = "";
            return I;
        }
        aVar.f8747c = Utf8.h(bArr, I, i12);
        return I + i12;
    }

    static int G(int i11, byte[] bArr, int i12, int i13, i1 i1Var, a aVar) throws InvalidProtocolBufferException {
        if (WireFormat.a(i11) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int iB = WireFormat.b(i11);
        if (iB == 0) {
            int iL = L(bArr, i12, aVar);
            i1Var.n(i11, Long.valueOf(aVar.f8746b));
            return iL;
        }
        if (iB == 1) {
            i1Var.n(i11, Long.valueOf(j(bArr, i12)));
            return i12 + 8;
        }
        if (iB == 2) {
            int I = I(bArr, i12, aVar);
            int i14 = aVar.f8745a;
            if (i14 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i14 > bArr.length - I) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i14 == 0) {
                i1Var.n(i11, ByteString.EMPTY);
            } else {
                i1Var.n(i11, ByteString.copyFrom(bArr, I, i14));
            }
            return I + i14;
        }
        if (iB != 3) {
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            i1Var.n(i11, Integer.valueOf(h(bArr, i12)));
            return i12 + 4;
        }
        i1 i1VarK = i1.k();
        int i15 = (i11 & (-8)) | 4;
        int i16 = aVar.f8749e + 1;
        aVar.f8749e = i16;
        a(i16);
        int i17 = 0;
        while (i12 < i13) {
            int I2 = I(bArr, i12, aVar);
            int i18 = aVar.f8745a;
            if (i18 == i15) {
                i17 = i18;
                i12 = I2;
                break;
            }
            i17 = i18;
            i12 = G(i18, bArr, I2, i13, i1VarK, aVar);
        }
        aVar.f8749e--;
        if (i12 > i13 || i17 != i15) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        i1Var.n(i11, i1VarK);
        return i12;
    }

    static int H(int i11, byte[] bArr, int i12, a aVar) {
        int i13 = i11 & 127;
        int i14 = i12 + 1;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            aVar.f8745a = i13 | (b11 << 7);
            return i14;
        }
        int i15 = i13 | ((b11 & 127) << 7);
        int i16 = i12 + 2;
        byte b12 = bArr[i14];
        if (b12 >= 0) {
            aVar.f8745a = i15 | (b12 << 14);
            return i16;
        }
        int i17 = i15 | ((b12 & 127) << 14);
        int i18 = i12 + 3;
        byte b13 = bArr[i16];
        if (b13 >= 0) {
            aVar.f8745a = i17 | (b13 << 21);
            return i18;
        }
        int i19 = i17 | ((b13 & 127) << 21);
        int i20 = i12 + 4;
        byte b14 = bArr[i18];
        if (b14 >= 0) {
            aVar.f8745a = i19 | (b14 << 28);
            return i20;
        }
        int i21 = i19 | ((b14 & 127) << 28);
        while (true) {
            int i22 = i20 + 1;
            if (bArr[i20] >= 0) {
                aVar.f8745a = i21;
                return i22;
            }
            i20 = i22;
        }
    }

    static int I(byte[] bArr, int i11, a aVar) {
        int i12 = i11 + 1;
        byte b11 = bArr[i11];
        if (b11 < 0) {
            return H(b11, bArr, i12, aVar);
        }
        aVar.f8745a = b11;
        return i12;
    }

    static int J(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) {
        v vVar = (v) dVar;
        int I = I(bArr, i12, aVar);
        vVar.addInt(aVar.f8745a);
        while (I < i13) {
            int I2 = I(bArr, I, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            I = I(bArr, I2, aVar);
            vVar.addInt(aVar.f8745a);
        }
        return I;
    }

    static int K(long j11, byte[] bArr, int i11, a aVar) {
        int i12 = i11 + 1;
        byte b11 = bArr[i11];
        long j12 = (j11 & 127) | (((long) (b11 & 127)) << 7);
        int i13 = 7;
        while (b11 < 0) {
            int i14 = i12 + 1;
            byte b12 = bArr[i12];
            i13 += 7;
            j12 |= ((long) (b12 & 127)) << i13;
            i12 = i14;
            b11 = b12;
        }
        aVar.f8746b = j12;
        return i12;
    }

    static int L(byte[] bArr, int i11, a aVar) {
        int i12 = i11 + 1;
        long j11 = bArr[i11];
        if (j11 < 0) {
            return K(j11, bArr, i12, aVar);
        }
        aVar.f8746b = j11;
        return i12;
    }

    static int M(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        int iL = L(bArr, i12, aVar);
        f0Var.addLong(aVar.f8746b);
        while (iL < i13) {
            int I = I(bArr, iL, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            iL = L(bArr, I, aVar);
            f0Var.addLong(aVar.f8746b);
        }
        return iL;
    }

    static int N(Object obj, b1 b1Var, byte[] bArr, int i11, int i12, int i13, a aVar) throws InvalidProtocolBufferException {
        q0 q0Var = (q0) b1Var;
        int i14 = aVar.f8749e + 1;
        aVar.f8749e = i14;
        a(i14);
        int iX = q0Var.X(obj, bArr, i11, i12, i13, aVar);
        aVar.f8749e--;
        aVar.f8747c = obj;
        return iX;
    }

    static int O(Object obj, b1 b1Var, byte[] bArr, int i11, int i12, a aVar) throws InvalidProtocolBufferException {
        int iH = i11 + 1;
        int i13 = bArr[i11];
        if (i13 < 0) {
            iH = H(i13, bArr, iH, aVar);
            i13 = aVar.f8745a;
        }
        int i14 = iH;
        if (i13 < 0 || i13 > i12 - i14) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i15 = aVar.f8749e + 1;
        aVar.f8749e = i15;
        a(i15);
        int i16 = i13 + i14;
        b1Var.c(obj, bArr, i14, i16, aVar);
        aVar.f8749e--;
        aVar.f8747c = obj;
        return i16;
    }

    static int P(int i11, byte[] bArr, int i12, int i13, a aVar) throws InvalidProtocolBufferException {
        if (WireFormat.a(i11) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int iB = WireFormat.b(i11);
        if (iB == 0) {
            return L(bArr, i12, aVar);
        }
        if (iB == 1) {
            return i12 + 8;
        }
        if (iB == 2) {
            return I(bArr, i12, aVar) + aVar.f8745a;
        }
        if (iB != 3) {
            if (iB == 5) {
                return i12 + 4;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }
        int i14 = (i11 & (-8)) | 4;
        int i15 = 0;
        while (i12 < i13) {
            i12 = I(bArr, i12, aVar);
            i15 = aVar.f8745a;
            if (i15 == i14) {
                break;
            }
            i12 = P(i15, bArr, i12, i13, aVar);
        }
        if (i12 > i13 || i15 != i14) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i12;
    }

    private static void a(int i11) throws InvalidProtocolBufferException {
        if (i11 >= f8744a) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
    }

    static int b(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) {
        f fVar = (f) dVar;
        int iL = L(bArr, i12, aVar);
        fVar.addBoolean(aVar.f8746b != 0);
        while (iL < i13) {
            int I = I(bArr, iL, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            iL = L(bArr, I, aVar);
            fVar.addBoolean(aVar.f8746b != 0);
        }
        return iL;
    }

    static int c(byte[] bArr, int i11, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a;
        if (i12 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i12 > bArr.length - I) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i12 == 0) {
            aVar.f8747c = ByteString.EMPTY;
            return I;
        }
        aVar.f8747c = ByteString.copyFrom(bArr, I, i12);
        return I + i12;
    }

    static int d(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i12, aVar);
        int i14 = aVar.f8745a;
        if (i14 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i14 > bArr.length - I) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i14 == 0) {
            dVar.add(ByteString.EMPTY);
        } else {
            dVar.add(ByteString.copyFrom(bArr, I, i14));
            I += i14;
        }
        while (I < i13) {
            int I2 = I(bArr, I, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            I = I(bArr, I2, aVar);
            int i15 = aVar.f8745a;
            if (i15 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i15 > bArr.length - I) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i15 == 0) {
                dVar.add(ByteString.EMPTY);
            } else {
                dVar.add(ByteString.copyFrom(bArr, I, i15));
                I += i15;
            }
        }
        return I;
    }

    static double e(byte[] bArr, int i11) {
        return Double.longBitsToDouble(j(bArr, i11));
    }

    static int f(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) {
        l lVar = (l) dVar;
        lVar.addDouble(e(bArr, i12));
        int i14 = i12 + 8;
        while (i14 < i13) {
            int I = I(bArr, i14, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            lVar.addDouble(e(bArr, I));
            i14 = I + 8;
        }
        return i14;
    }

    static int g(int i11, byte[] bArr, int i12, int i13, Object obj, n0 n0Var, h1 h1Var, a aVar) {
        aVar.f8748d.a(n0Var, i11 >>> 3);
        return G(i11, bArr, i12, i13, q0.q(obj), aVar);
    }

    static int h(byte[] bArr, int i11) {
        return ((bArr[i11 + 3] & 255) << 24) | (bArr[i11] & 255) | ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11 + 2] & 255) << 16);
    }

    static int i(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) {
        v vVar = (v) dVar;
        vVar.addInt(h(bArr, i12));
        int i14 = i12 + 4;
        while (i14 < i13) {
            int I = I(bArr, i14, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            vVar.addInt(h(bArr, I));
            i14 = I + 4;
        }
        return i14;
    }

    static long j(byte[] bArr, int i11) {
        return ((((long) bArr[i11 + 7]) & 255) << 56) | (((long) bArr[i11]) & 255) | ((((long) bArr[i11 + 1]) & 255) << 8) | ((((long) bArr[i11 + 2]) & 255) << 16) | ((((long) bArr[i11 + 3]) & 255) << 24) | ((((long) bArr[i11 + 4]) & 255) << 32) | ((((long) bArr[i11 + 5]) & 255) << 40) | ((((long) bArr[i11 + 6]) & 255) << 48);
    }

    static int k(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        f0Var.addLong(j(bArr, i12));
        int i14 = i12 + 8;
        while (i14 < i13) {
            int I = I(bArr, i14, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            f0Var.addLong(j(bArr, I));
            i14 = I + 8;
        }
        return i14;
    }

    static float l(byte[] bArr, int i11) {
        return Float.intBitsToFloat(h(bArr, i11));
    }

    static int m(int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) {
        t tVar = (t) dVar;
        tVar.addFloat(l(bArr, i12));
        int i14 = i12 + 4;
        while (i14 < i13) {
            int I = I(bArr, i14, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            tVar.addFloat(l(bArr, I));
            i14 = I + 4;
        }
        return i14;
    }

    static int n(b1 b1Var, byte[] bArr, int i11, int i12, int i13, a aVar) throws InvalidProtocolBufferException {
        Object objNewInstance = b1Var.newInstance();
        int iN = N(objNewInstance, b1Var, bArr, i11, i12, i13, aVar);
        b1Var.makeImmutable(objNewInstance);
        aVar.f8747c = objNewInstance;
        return iN;
    }

    static int o(b1 b1Var, int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        int i14 = (i11 & (-8)) | 4;
        int iN = n(b1Var, bArr, i12, i13, i14, aVar);
        dVar.add(aVar.f8747c);
        while (iN < i13) {
            int I = I(bArr, iN, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            iN = n(b1Var, bArr, I, i13, i14, aVar);
            dVar.add(aVar.f8747c);
        }
        return iN;
    }

    static int p(b1 b1Var, byte[] bArr, int i11, int i12, a aVar) throws InvalidProtocolBufferException {
        Object objNewInstance = b1Var.newInstance();
        int iO = O(objNewInstance, b1Var, bArr, i11, i12, aVar);
        b1Var.makeImmutable(objNewInstance);
        aVar.f8747c = objNewInstance;
        return iO;
    }

    static int q(b1 b1Var, int i11, byte[] bArr, int i12, int i13, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        int iP = p(b1Var, bArr, i12, i13, aVar);
        dVar.add(aVar.f8747c);
        while (iP < i13) {
            int I = I(bArr, iP, aVar);
            if (i11 != aVar.f8745a) {
                break;
            }
            iP = p(b1Var, bArr, I, i13, aVar);
            dVar.add(aVar.f8747c);
        }
        return iP;
    }

    static int r(byte[] bArr, int i11, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        f fVar = (f) dVar;
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a + I;
        while (I < i12) {
            I = L(bArr, I, aVar);
            fVar.addBoolean(aVar.f8746b != 0);
        }
        if (I == i12) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int s(byte[] bArr, int i11, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        l lVar = (l) dVar;
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a + I;
        while (I < i12) {
            lVar.addDouble(e(bArr, I));
            I += 8;
        }
        if (I == i12) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int t(byte[] bArr, int i11, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        v vVar = (v) dVar;
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a + I;
        while (I < i12) {
            vVar.addInt(h(bArr, I));
            I += 4;
        }
        if (I == i12) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int u(byte[] bArr, int i11, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        f0 f0Var = (f0) dVar;
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a + I;
        while (I < i12) {
            f0Var.addLong(j(bArr, I));
            I += 8;
        }
        if (I == i12) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int v(byte[] bArr, int i11, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        t tVar = (t) dVar;
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a + I;
        while (I < i12) {
            tVar.addFloat(l(bArr, I));
            I += 4;
        }
        if (I == i12) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int w(byte[] bArr, int i11, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        v vVar = (v) dVar;
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a + I;
        while (I < i12) {
            I = I(bArr, I, aVar);
            vVar.addInt(i.c(aVar.f8745a));
        }
        if (I == i12) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int x(byte[] bArr, int i11, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        f0 f0Var = (f0) dVar;
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a + I;
        while (I < i12) {
            I = L(bArr, I, aVar);
            f0Var.addLong(i.d(aVar.f8746b));
        }
        if (I == i12) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int y(byte[] bArr, int i11, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        v vVar = (v) dVar;
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a + I;
        while (I < i12) {
            I = I(bArr, I, aVar);
            vVar.addInt(aVar.f8745a);
        }
        if (I == i12) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int z(byte[] bArr, int i11, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        f0 f0Var = (f0) dVar;
        int I = I(bArr, i11, aVar);
        int i12 = aVar.f8745a + I;
        while (I < i12) {
            I = L(bArr, I, aVar);
            f0Var.addLong(aVar.f8746b);
        }
        if (I == i12) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }
}
