package d3;

import androidx.media3.common.ParserException;
import java.util.ArrayDeque;
import l2.s;

/* JADX INFO: loaded from: classes2.dex */
final class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f61146a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayDeque f61147b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f61148c = new g();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d3.b f61149d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f61150e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f61151f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f61152g;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f61153a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f61154b;

        private b(int i11, long j11) {
            this.f61153a = i11;
            this.f61154b = j11;
        }
    }

    private long c(s sVar) {
        sVar.resetPeekPosition();
        while (true) {
            sVar.peekFully(this.f61146a, 0, 4);
            int iC = g.c(this.f61146a[0]);
            if (iC != -1 && iC <= 4) {
                int iA = (int) g.a(this.f61146a, iC, false);
                if (this.f61149d.isLevel1Element(iA)) {
                    sVar.skipFully(iC);
                    return iA;
                }
            }
            sVar.skipFully(1);
        }
    }

    private double d(s sVar, int i11) {
        long jE = e(sVar, i11);
        return i11 == 4 ? Float.intBitsToFloat((int) jE) : Double.longBitsToDouble(jE);
    }

    private long e(s sVar, int i11) {
        sVar.readFully(this.f61146a, 0, i11);
        long j11 = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            j11 = (j11 << 8) | ((long) (this.f61146a[i12] & 255));
        }
        return j11;
    }

    private static String f(s sVar, int i11) {
        if (i11 == 0) {
            return "";
        }
        byte[] bArr = new byte[i11];
        sVar.readFully(bArr, 0, i11);
        while (i11 > 0 && bArr[i11 - 1] == 0) {
            i11--;
        }
        return new String(bArr, 0, i11);
    }

    @Override // d3.c
    public boolean a(s sVar) throws ParserException {
        androidx.media3.common.util.a.i(this.f61149d);
        while (true) {
            b bVar = (b) this.f61147b.peek();
            if (bVar != null && sVar.getPosition() >= bVar.f61154b) {
                this.f61149d.endMasterElement(((b) this.f61147b.pop()).f61153a);
                return true;
            }
            if (this.f61150e == 0) {
                long jD = this.f61148c.d(sVar, true, false, 4);
                if (jD == -2) {
                    jD = c(sVar);
                }
                if (jD == -1) {
                    return false;
                }
                this.f61151f = (int) jD;
                this.f61150e = 1;
            }
            if (this.f61150e == 1) {
                this.f61152g = this.f61148c.d(sVar, false, true, 8);
                this.f61150e = 2;
            }
            int elementType = this.f61149d.getElementType(this.f61151f);
            if (elementType != 0) {
                if (elementType == 1) {
                    long position = sVar.getPosition();
                    this.f61147b.push(new b(this.f61151f, this.f61152g + position));
                    this.f61149d.startMasterElement(this.f61151f, position, this.f61152g);
                    this.f61150e = 0;
                    return true;
                }
                if (elementType == 2) {
                    long j11 = this.f61152g;
                    if (j11 <= 8) {
                        this.f61149d.integerElement(this.f61151f, e(sVar, (int) j11));
                        this.f61150e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("Invalid integer size: " + this.f61152g, null);
                }
                if (elementType == 3) {
                    long j12 = this.f61152g;
                    if (j12 <= 2147483647L) {
                        this.f61149d.stringElement(this.f61151f, f(sVar, (int) j12));
                        this.f61150e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("String element size: " + this.f61152g, null);
                }
                if (elementType == 4) {
                    this.f61149d.a(this.f61151f, (int) this.f61152g, sVar);
                    this.f61150e = 0;
                    return true;
                }
                if (elementType != 5) {
                    throw ParserException.createForMalformedContainer("Invalid element type " + elementType, null);
                }
                long j13 = this.f61152g;
                if (j13 == 4 || j13 == 8) {
                    this.f61149d.floatElement(this.f61151f, d(sVar, (int) j13));
                    this.f61150e = 0;
                    return true;
                }
                throw ParserException.createForMalformedContainer("Invalid float size: " + this.f61152g, null);
            }
            sVar.skipFully((int) this.f61152g);
            this.f61150e = 0;
        }
    }

    @Override // d3.c
    public void b(d3.b bVar) {
        this.f61149d = bVar;
    }

    @Override // d3.c
    public void reset() {
        this.f61150e = 0;
        this.f61147b.clear();
        this.f61148c.e();
    }
}
