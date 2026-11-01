package m9;

import com.google.android.exoplayer2.ParserException;
import g9.m;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes4.dex */
final class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f69348a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayDeque f69349b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f69350c = new g();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private m9.b f69351d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f69352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f69353f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f69354g;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f69355a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f69356b;

        private b(int i11, long j11) {
            this.f69355a = i11;
            this.f69356b = j11;
        }
    }

    private long c(m mVar) {
        mVar.resetPeekPosition();
        while (true) {
            mVar.peekFully(this.f69348a, 0, 4);
            int iC = g.c(this.f69348a[0]);
            if (iC != -1 && iC <= 4) {
                int iA = (int) g.a(this.f69348a, iC, false);
                if (this.f69351d.isLevel1Element(iA)) {
                    mVar.skipFully(iC);
                    return iA;
                }
            }
            mVar.skipFully(1);
        }
    }

    private double d(m mVar, int i11) {
        long jE = e(mVar, i11);
        return i11 == 4 ? Float.intBitsToFloat((int) jE) : Double.longBitsToDouble(jE);
    }

    private long e(m mVar, int i11) {
        mVar.readFully(this.f69348a, 0, i11);
        long j11 = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            j11 = (j11 << 8) | ((long) (this.f69348a[i12] & 255));
        }
        return j11;
    }

    private static String f(m mVar, int i11) {
        if (i11 == 0) {
            return "";
        }
        byte[] bArr = new byte[i11];
        mVar.readFully(bArr, 0, i11);
        while (i11 > 0 && bArr[i11 - 1] == 0) {
            i11--;
        }
        return new String(bArr, 0, i11);
    }

    @Override // m9.c
    public boolean a(m mVar) throws ParserException {
        com.google.android.exoplayer2.util.a.i(this.f69351d);
        while (true) {
            b bVar = (b) this.f69349b.peek();
            if (bVar != null && mVar.getPosition() >= bVar.f69356b) {
                this.f69351d.endMasterElement(((b) this.f69349b.pop()).f69355a);
                return true;
            }
            if (this.f69352e == 0) {
                long jD = this.f69350c.d(mVar, true, false, 4);
                if (jD == -2) {
                    jD = c(mVar);
                }
                if (jD == -1) {
                    return false;
                }
                this.f69353f = (int) jD;
                this.f69352e = 1;
            }
            if (this.f69352e == 1) {
                this.f69354g = this.f69350c.d(mVar, false, true, 8);
                this.f69352e = 2;
            }
            int elementType = this.f69351d.getElementType(this.f69353f);
            if (elementType != 0) {
                if (elementType == 1) {
                    long position = mVar.getPosition();
                    this.f69349b.push(new b(this.f69353f, this.f69354g + position));
                    this.f69351d.startMasterElement(this.f69353f, position, this.f69354g);
                    this.f69352e = 0;
                    return true;
                }
                if (elementType == 2) {
                    long j11 = this.f69354g;
                    if (j11 <= 8) {
                        this.f69351d.integerElement(this.f69353f, e(mVar, (int) j11));
                        this.f69352e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("Invalid integer size: " + this.f69354g, null);
                }
                if (elementType == 3) {
                    long j12 = this.f69354g;
                    if (j12 <= 2147483647L) {
                        this.f69351d.stringElement(this.f69353f, f(mVar, (int) j12));
                        this.f69352e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("String element size: " + this.f69354g, null);
                }
                if (elementType == 4) {
                    this.f69351d.a(this.f69353f, (int) this.f69354g, mVar);
                    this.f69352e = 0;
                    return true;
                }
                if (elementType != 5) {
                    throw ParserException.createForMalformedContainer("Invalid element type " + elementType, null);
                }
                long j13 = this.f69354g;
                if (j13 == 4 || j13 == 8) {
                    this.f69351d.floatElement(this.f69353f, d(mVar, (int) j13));
                    this.f69352e = 0;
                    return true;
                }
                throw ParserException.createForMalformedContainer("Invalid float size: " + this.f69354g, null);
            }
            mVar.skipFully((int) this.f69354g);
            this.f69352e = 0;
        }
    }

    @Override // m9.c
    public void b(m9.b bVar) {
        this.f69351d = bVar;
    }

    @Override // m9.c
    public void reset() {
        this.f69352e = 0;
        this.f69349b.clear();
        this.f69350c.e();
    }
}
