package ff;

import com.tencent.tinker.android.dex.DexException;
import com.tencent.tinker.android.dex.MethodHandle;
import com.tencent.tinker.android.dex.c;
import com.tencent.tinker.android.dex.d;
import com.tencent.tinker.android.dex.e;
import com.tencent.tinker.android.dex.f;
import com.tencent.tinker.android.dex.g;
import com.tencent.tinker.android.dex.h;
import com.tencent.tinker.android.dex.i;
import com.tencent.tinker.android.dex.l;
import com.tencent.tinker.android.dex.n;
import com.tencent.tinker.android.dex.o;
import com.tencent.tinker.android.dex.p;
import com.tencent.tinker.android.dex.q;
import com.tencent.tinker.android.dex.r;
import com.tencent.tinker.android.dex.s;
import com.tencent.tinker.android.dex.t;
import com.tencent.tinker.android.dex.u;
import com.tencent.tinker.android.dex.w;
import gf.b;
import java.io.ByteArrayOutputStream;
import java.io.UTFDataFormatException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes5.dex */
public class a implements gf.a, b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final short[] f62382d = new short[0];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final h.b[] f62383e = new h.b[0];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final h.a[] f62384f = new h.a[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ByteBuffer f62385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f62386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f62387c;

    /* JADX INFO: renamed from: ff.a$a, reason: collision with other inner class name */
    class C0757a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ByteArrayOutputStream f62388a;

        C0757a(ByteArrayOutputStream byteArrayOutputStream) {
            this.f62388a = byteArrayOutputStream;
        }

        @Override // gf.b
        public void writeByte(int i11) {
            this.f62388a.write(i11);
        }
    }

    public a() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(512);
        this.f62385a = byteBufferAllocate;
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        this.f62386b = this.f62385a.position();
        ByteBuffer byteBuffer = this.f62385a;
        this.f62387c = true;
    }

    public a(ByteBuffer byteBuffer) {
        this.f62385a = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        this.f62386b = byteBuffer.limit();
        this.f62387c = false;
    }

    private h.b[] F(int i11, h.a[] aVarArr) {
        h.b[] bVarArr = new h.b[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            bVarArr[i12] = new h.b(w(), J(), d(aVarArr, J()));
        }
        return bVarArr;
    }

    private void T(h.a aVar) {
        int i11 = aVar.f40604c;
        int[] iArr = aVar.f40602a;
        int[] iArr2 = aVar.f40603b;
        if (i11 != -1) {
            i0(-iArr.length);
        } else {
            i0(iArr.length);
        }
        for (int i12 = 0; i12 < iArr.length; i12++) {
            m0(iArr[i12]);
            m0(iArr2[i12]);
        }
        if (i11 != -1) {
            m0(i11);
        }
    }

    private int[] U(h.a[] aVarArr) {
        int iPosition = this.f62385a.position();
        m0(aVarArr.length);
        int[] iArr = new int[aVarArr.length];
        for (int i11 = 0; i11 < aVarArr.length; i11++) {
            iArr[i11] = this.f62385a.position() - iPosition;
            T(aVarArr[i11]);
        }
        return iArr;
    }

    private void b0(f.a[] aVarArr) {
        int i11 = 0;
        for (f.a aVar : aVarArr) {
            m0(aVar.f40582a - i11);
            i11 = aVar.f40582a;
            m0(aVar.f40583b);
        }
    }

    private void c(int i11) {
        if (this.f62385a.position() + i11 <= this.f62385a.limit() || !this.f62387c) {
            return;
        }
        byte[] bArrArray = this.f62385a.array();
        byte[] bArr = new byte[bArrArray.length + i11 + (bArrArray.length >> 1)];
        System.arraycopy(bArrArray, 0, bArr, 0, this.f62385a.position());
        int iPosition = this.f62385a.position();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        this.f62385a = byteBufferWrap;
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        ByteBuffer byteBuffer = this.f62385a;
    }

    private int d(h.a[] aVarArr, int i11) {
        for (int i12 = 0; i12 < aVarArr.length; i12++) {
            if (aVarArr[i12].f40605d == i11) {
                return i12;
            }
        }
        throw new IllegalArgumentException();
    }

    private byte[] e(int i11) {
        byte[] bArr = new byte[this.f62385a.position() - i11];
        this.f62385a.get(bArr);
        return bArr;
    }

    private void f0(f.b[] bVarArr) {
        int i11 = 0;
        for (f.b bVar : bVarArr) {
            m0(bVar.f40584a - i11);
            i11 = bVar.f40584a;
            m0(bVar.f40585b);
            m0(bVar.f40586c);
        }
    }

    private void k0(h.b[] bVarArr, int[] iArr) {
        for (h.b bVar : bVarArr) {
            c0(bVar.f40606a);
            o0(bVar.f40607b);
            o0(iArr[bVar.f40608c]);
        }
    }

    private h.a n(int i11) {
        int iD = D();
        int iAbs = Math.abs(iD);
        int[] iArr = new int[iAbs];
        int[] iArr2 = new int[iAbs];
        for (int i12 = 0; i12 < iAbs; i12++) {
            iArr[i12] = H();
            iArr2[i12] = H();
        }
        return new h.a(iArr, iArr2, iD <= 0 ? H() : -1, i11);
    }

    private h.a[] o() {
        int iPosition = this.f62385a.position();
        int iH = H();
        h.a[] aVarArr = new h.a[iH];
        for (int i11 = 0; i11 < iH; i11++) {
            aVarArr[i11] = n(this.f62385a.position() - iPosition);
        }
        return aVarArr;
    }

    private f.a[] v(int i11) {
        f.a[] aVarArr = new f.a[i11];
        int iH = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            iH += H();
            aVarArr[i12] = new f.a(iH, H());
        }
        return aVarArr;
    }

    private f.b[] z(int i11) {
        f.b[] bVarArr = new f.b[i11];
        int iH = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            iH += H();
            bVarArr[i12] = new f.b(iH, H(), H());
        }
        return bVarArr;
    }

    public s A() {
        return new s(this.f62385a.position(), w(), w(), w());
    }

    public short B() {
        return this.f62385a.getShort();
    }

    public short[] C(int i11) {
        if (i11 == 0) {
            return f62382d;
        }
        short[] sArr = new short[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            sArr[i12] = B();
        }
        return sArr;
    }

    public int D() {
        return p.a(this);
    }

    public u E() {
        int iPosition = this.f62385a.position();
        try {
            int iH = H();
            String strB = r.b(this, new char[iH]);
            if (strB.length() == iH) {
                return new u(iPosition, strB);
            }
            throw new DexException("Declared length " + iH + " doesn't match decoded length of " + strB.length());
        } catch (UTFDataFormatException e11) {
            throw new DexException(e11);
        }
    }

    public w G() {
        return new w(this.f62385a.position(), C(w()));
    }

    public int H() {
        return p.b(this);
    }

    public int I() {
        return p.b(this) - 1;
    }

    public int J() {
        return B() & 65535;
    }

    public void K(int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException();
        }
        ByteBuffer byteBuffer = this.f62385a;
    }

    public void L(int i11) {
        c(i11);
        K(i11);
    }

    public void M(byte[] bArr) {
        c(bArr.length);
        this.f62385a.put(bArr);
        if (this.f62385a.position() > this.f62386b) {
            this.f62386b = this.f62385a.position();
        }
    }

    public void N(short[] sArr) {
        c(sArr.length * 2);
        for (short s11 : sArr) {
            h0(s11);
        }
        if (this.f62385a.position() > this.f62386b) {
            this.f62386b = this.f62385a.position();
        }
    }

    public int O(com.tencent.tinker.android.dex.a aVar) {
        int iPosition = this.f62385a.position();
        writeByte(aVar.f40569b);
        Z(aVar.f40570c);
        return iPosition;
    }

    public int P(com.tencent.tinker.android.dex.b bVar) {
        int iPosition = this.f62385a.position();
        c0(bVar.f40571b.length);
        for (int i11 : bVar.f40571b) {
            c0(i11);
        }
        return iPosition;
    }

    public int Q(c cVar) {
        int iPosition = this.f62385a.position();
        c0(cVar.f40572b.length);
        for (int i11 : cVar.f40572b) {
            c0(i11);
        }
        return iPosition;
    }

    public int R(d dVar) {
        int iPosition = this.f62385a.position();
        c0(dVar.f40573b);
        c0(dVar.f40574c.length);
        c0(dVar.f40575d.length);
        c0(dVar.f40576e.length);
        for (int[] iArr : dVar.f40574c) {
            c0(iArr[0]);
            c0(iArr[1]);
        }
        for (int[] iArr2 : dVar.f40575d) {
            c0(iArr2[0]);
            c0(iArr2[1]);
        }
        for (int[] iArr3 : dVar.f40576e) {
            c0(iArr3[0]);
            c0(iArr3[1]);
        }
        return iPosition;
    }

    public int S(e eVar) {
        int iPosition = this.f62385a.position();
        c0(eVar.f40577b);
        return iPosition;
    }

    public int V(f fVar) {
        int iPosition = this.f62385a.position();
        m0(fVar.f40578b.length);
        m0(fVar.f40579c.length);
        m0(fVar.f40580d.length);
        m0(fVar.f40581e.length);
        b0(fVar.f40578b);
        b0(fVar.f40579c);
        f0(fVar.f40580d);
        f0(fVar.f40581e);
        return iPosition;
    }

    public int W(g gVar) {
        int iPosition = this.f62385a.position();
        c0(gVar.f40587b);
        c0(gVar.f40588c);
        c0(gVar.f40589d);
        c0(gVar.f40590e);
        c0(gVar.f40591f);
        c0(gVar.f40592g);
        c0(gVar.f40593h);
        c0(gVar.f40594i);
        return iPosition;
    }

    public int X(h hVar) {
        int iPosition = this.f62385a.position();
        o0(hVar.f40595b);
        o0(hVar.f40596c);
        o0(hVar.f40597d);
        o0(hVar.f40600g.length);
        c0(hVar.f40598e);
        c0(hVar.f40599f.length);
        N(hVar.f40599f);
        if (hVar.f40600g.length > 0) {
            if ((hVar.f40599f.length & 1) == 1) {
                h0((short) 0);
            }
            int iPosition2 = this.f62385a.position();
            L(hVar.f40600g.length * 8);
            int[] iArrU = U(hVar.f40601h);
            int iPosition3 = this.f62385a.position();
            k0(hVar.f40600g, iArrU);
        }
        return iPosition;
    }

    public int Y(i iVar) {
        int iPosition = this.f62385a.position();
        m0(iVar.f40609b);
        int length = iVar.f40610c.length;
        m0(length);
        for (int i11 = 0; i11 < length; i11++) {
            n0(iVar.f40610c[i11]);
        }
        M(iVar.f40611d);
        return iPosition;
    }

    public int Z(l lVar) {
        int iPosition = this.f62385a.position();
        M(lVar.f40637b);
        return iPosition;
    }

    public void a() {
        ByteBuffer byteBuffer = this.f62385a;
    }

    public int a0(o oVar) {
        int iPosition = this.f62385a.position();
        o0(oVar.f40644b);
        o0(oVar.f40645c);
        c0(oVar.f40646d);
        return iPosition;
    }

    public void b() {
        c(t.a(this.f62385a.position()) - this.f62385a.position());
        while ((this.f62385a.position() & 3) != 0) {
            this.f62385a.put((byte) 0);
        }
        if (this.f62385a.position() > this.f62386b) {
            this.f62386b = this.f62385a.position();
        }
    }

    public void c0(int i11) {
        c(4);
        this.f62385a.putInt(i11);
        if (this.f62385a.position() > this.f62386b) {
            this.f62386b = this.f62385a.position();
        }
    }

    public int d0(MethodHandle methodHandle) {
        int iPosition = this.f62385a.position();
        o0(methodHandle.f40564b.value);
        o0(methodHandle.f40565c);
        o0(methodHandle.f40566d);
        o0(methodHandle.f40567e);
        return iPosition;
    }

    public int e0(q qVar) {
        int iPosition = this.f62385a.position();
        o0(qVar.f40647b);
        o0(qVar.f40648c);
        c0(qVar.f40649d);
        return iPosition;
    }

    public int f() {
        return this.f62385a.position();
    }

    public void g(int i11) {
    }

    public int g0(s sVar) {
        int iPosition = this.f62385a.position();
        c0(sVar.f40650b);
        c0(sVar.f40651c);
        c0(sVar.f40652d);
        return iPosition;
    }

    public com.tencent.tinker.android.dex.a h() {
        int iPosition = this.f62385a.position();
        byte b11 = readByte();
        int iPosition2 = this.f62385a.position();
        new n(this, 29).w();
        return new com.tencent.tinker.android.dex.a(iPosition, b11, new l(iPosition2, e(iPosition2)));
    }

    public void h0(short s11) {
        c(2);
        this.f62385a.putShort(s11);
        if (this.f62385a.position() > this.f62386b) {
            this.f62386b = this.f62385a.position();
        }
    }

    public com.tencent.tinker.android.dex.b i() {
        int iPosition = this.f62385a.position();
        int iW = w();
        int[] iArr = new int[iW];
        for (int i11 = 0; i11 < iW; i11++) {
            iArr[i11] = w();
        }
        return new com.tencent.tinker.android.dex.b(iPosition, iArr);
    }

    public void i0(int i11) {
        p.d(this, i11);
    }

    public c j() {
        int iPosition = this.f62385a.position();
        int iW = w();
        int[] iArr = new int[iW];
        for (int i11 = 0; i11 < iW; i11++) {
            iArr[i11] = w();
        }
        return new c(iPosition, iArr);
    }

    public int j0(u uVar) {
        int iPosition = this.f62385a.position();
        try {
            m0(uVar.f40653b.length());
            M(r.d(uVar.f40653b));
            writeByte(0);
            return iPosition;
        } catch (UTFDataFormatException e11) {
            throw new AssertionError(e11);
        }
    }

    public d k() {
        int iPosition = this.f62385a.position();
        int iW = w();
        int iW2 = w();
        int iW3 = w();
        int iW4 = w();
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iW2, 2);
        for (int i11 = 0; i11 < iW2; i11++) {
            iArr[i11][0] = w();
            iArr[i11][1] = w();
        }
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iW3, 2);
        for (int i12 = 0; i12 < iW3; i12++) {
            iArr2[i12][0] = w();
            iArr2[i12][1] = w();
        }
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iW4, 2);
        for (int i13 = 0; i13 < iW4; i13++) {
            iArr3[i13][0] = w();
            iArr3[i13][1] = w();
        }
        return new d(iPosition, iW, iArr, iArr2, iArr3);
    }

    public byte[] l(int i11) {
        byte[] bArr = new byte[i11];
        this.f62385a.get(bArr);
        return bArr;
    }

    public int l0(w wVar) {
        int iPosition = this.f62385a.position();
        short[] sArr = wVar.f40687b;
        c0(sArr.length);
        for (short s11 : sArr) {
            h0(s11);
        }
        return iPosition;
    }

    public e m() {
        return new e(this.f62385a.position(), w());
    }

    public void m0(int i11) {
        p.e(this, i11);
    }

    public void n0(int i11) {
        m0(i11 + 1);
    }

    public void o0(int i11) {
        short s11 = (short) i11;
        if (i11 == (65535 & s11)) {
            h0(s11);
            return;
        }
        throw new IllegalArgumentException("Expected an unsigned short: " + i11);
    }

    public f p() {
        return new f(this.f62385a.position(), v(H()), v(H()), z(H()), z(H()));
    }

    public g q() {
        return new g(f(), w(), w(), w(), w(), w(), w(), w(), w());
    }

    public h r() {
        h.b[] bVarArr;
        h.a[] aVarArr;
        int iPosition = this.f62385a.position();
        int iJ = J();
        int iJ2 = J();
        int iJ3 = J();
        int iJ4 = J();
        int iW = w();
        short[] sArrC = C(w());
        if (iJ4 > 0) {
            if ((sArrC.length & 1) == 1) {
                K(2);
            }
            int iPosition2 = this.f62385a.position();
            K(iJ4 * 8);
            h.a[] aVarArrO = o();
            int iPosition3 = this.f62385a.position();
            h.b[] bVarArrF = F(iJ4, aVarArrO);
            aVarArr = aVarArrO;
            bVarArr = bVarArrF;
        } else {
            bVarArr = f62383e;
            aVarArr = f62384f;
        }
        return new h(iPosition, iJ, iJ2, iJ3, iW, sArrC, bVarArr, aVarArr);
    }

    @Override // gf.a
    public byte readByte() {
        return this.f62385a.get();
    }

    public i s() throws Throwable {
        int iPosition = this.f62385a.position();
        int iH = H();
        int iH2 = H();
        int[] iArr = new int[iH2];
        for (int i11 = 0; i11 < iH2; i11++) {
            iArr[i11] = I();
        }
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(64);
            try {
                C0757a c0757a = new C0757a(byteArrayOutputStream2);
                while (true) {
                    byte b11 = readByte();
                    byteArrayOutputStream2.write(b11);
                    if (b11 != 9) {
                        switch (b11) {
                            case 0:
                                i iVar = new i(iPosition, iH, iArr, byteArrayOutputStream2.toByteArray());
                                try {
                                    byteArrayOutputStream2.close();
                                    break;
                                } catch (Exception unused) {
                                }
                                return iVar;
                            case 1:
                                p.e(c0757a, H());
                                continue;
                            case 2:
                                p.d(c0757a, D());
                                continue;
                            case 3:
                            case 4:
                                p.e(c0757a, H());
                                p.f(c0757a, I());
                                p.f(c0757a, I());
                                if (b11 == 4) {
                                    p.f(c0757a, I());
                                } else {
                                    continue;
                                }
                                break;
                            case 5:
                            case 6:
                                p.e(c0757a, H());
                                continue;
                            default:
                                continue;
                        }
                        th = th;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        throw th;
                    }
                    p.f(c0757a, I());
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = byteArrayOutputStream2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public l t() {
        int iPosition = this.f62385a.position();
        new n(this, 28).w();
        return new l(iPosition, e(iPosition));
    }

    public o u() {
        return new o(this.f62385a.position(), J(), J(), w());
    }

    public int w() {
        return this.f62385a.getInt();
    }

    @Override // gf.b
    public void writeByte(int i11) {
        c(1);
        this.f62385a.put((byte) i11);
        if (this.f62385a.position() > this.f62386b) {
            this.f62386b = this.f62385a.position();
        }
    }

    public MethodHandle x() {
        return new MethodHandle(this.f62385a.position(), MethodHandle.MethodHandleType.fromValue(J()), J(), J(), J());
    }

    public q y() {
        return new q(this.f62385a.position(), J(), J(), w());
    }
}
