package of;

import com.tencent.tinker.android.dex.DexException;
import com.tencent.tinker.android.dex.MethodHandle;
import com.tencent.tinker.android.dex.f;
import com.tencent.tinker.android.dex.g;
import com.tencent.tinker.android.dex.h;
import com.tencent.tinker.android.dex.i;
import com.tencent.tinker.android.dex.l;
import com.tencent.tinker.android.dex.m;
import com.tencent.tinker.android.dex.n;
import com.tencent.tinker.android.dex.o;
import com.tencent.tinker.android.dex.p;
import com.tencent.tinker.android.dex.q;
import com.tencent.tinker.android.dex.s;
import com.tencent.tinker.android.dex.w;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: of.a$a, reason: collision with other inner class name */
    class C0861a implements gf.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ByteArrayInputStream f70973a;

        C0861a(ByteArrayInputStream byteArrayInputStream) {
            this.f70973a = byteArrayInputStream;
        }

        @Override // gf.a
        public byte readByte() {
            return (byte) (this.f70973a.read() & 255);
        }
    }

    class b implements gf.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ByteArrayOutputStream f70975a;

        b(ByteArrayOutputStream byteArrayOutputStream) {
            this.f70975a = byteArrayOutputStream;
        }

        @Override // gf.b
        public void writeByte(int i11) {
            this.f70975a.write(i11);
        }
    }

    class c implements gf.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ByteArrayOutputStream f70977a;

        c(ByteArrayOutputStream byteArrayOutputStream) {
            this.f70977a = byteArrayOutputStream;
        }

        @Override // gf.b
        public void writeByte(int i11) {
            this.f70977a.write(i11);
        }
    }

    class d implements gf.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ByteArrayOutputStream f70979a;

        d(ByteArrayOutputStream byteArrayOutputStream) {
            this.f70979a = byteArrayOutputStream;
        }

        @Override // gf.b
        public void writeByte(int i11) {
            this.f70979a.write(i11);
        }
    }

    private final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final gf.b f70981a;

        e(gf.b bVar) {
            this.f70981a = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(n nVar) {
            int iD = nVar.d();
            p.e(this.f70981a, a.this.J(nVar.b()));
            p.e(this.f70981a, iD);
            for (int i11 = 0; i11 < iD; i11++) {
                p.e(this.f70981a, a.this.I(nVar.e()));
                c(nVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(n nVar) {
            int iF = nVar.f();
            p.e(this.f70981a, iF);
            for (int i11 = 0; i11 < iF; i11++) {
                c(nVar);
            }
        }

        private void f(int i11, int i12) {
            this.f70981a.writeByte(i11 | (i12 << 5));
        }

        public void c(n nVar) {
            int iC = nVar.c();
            if (iC == 0) {
                m.f(this.f70981a, 0, nVar.h());
                return;
            }
            if (iC == 6) {
                m.f(this.f70981a, 6, nVar.o());
                return;
            }
            if (iC == 2) {
                m.f(this.f70981a, 2, nVar.t());
                return;
            }
            if (iC == 3) {
                m.g(this.f70981a, 3, nVar.i());
                return;
            }
            if (iC == 4) {
                m.f(this.f70981a, 4, nVar.n());
                return;
            }
            if (iC == 16) {
                m.e(this.f70981a, 16, ((long) Float.floatToIntBits(nVar.m())) << 32);
                return;
            }
            if (iC == 17) {
                m.e(this.f70981a, 17, Double.doubleToLongBits(nVar.j()));
                return;
            }
            switch (iC) {
                case 21:
                    m.g(this.f70981a, 21, a.this.G(nVar.r()));
                    return;
                case 22:
                    m.g(this.f70981a, 22, a.this.C(nVar.q()));
                    return;
                case 23:
                    m.g(this.f70981a, 23, a.this.I(nVar.u()));
                    return;
                case 24:
                    m.g(this.f70981a, 24, a.this.J(nVar.v()));
                    return;
                case 25:
                    m.g(this.f70981a, 25, a.this.z(nVar.l()));
                    return;
                case 26:
                    m.g(this.f70981a, 26, a.this.D(nVar.p()));
                    return;
                case 27:
                    m.g(this.f70981a, 27, a.this.z(nVar.k()));
                    return;
                case 28:
                    f(28, 0);
                    e(nVar);
                    return;
                case NOTIFICATION_REDIRECT_VALUE:
                    f(29, 0);
                    d(nVar);
                    return;
                case 30:
                    nVar.s();
                    f(30, 0);
                    return;
                case TEMPLATE_HTML_SIZE_VALUE:
                    f(31, nVar.g() ? 1 : 0);
                    return;
                default:
                    throw new DexException("Unexpected type: " + Integer.toHexString(nVar.c()));
            }
        }
    }

    private f.a[] A(f.a[] aVarArr) {
        f.a[] aVarArr2 = new f.a[aVarArr.length];
        for (int i11 = 0; i11 < aVarArr.length; i11++) {
            f.a aVar = aVarArr[i11];
            aVarArr2[i11] = new f.a(z(aVar.f40582a), aVar.f40583b);
        }
        return aVarArr2;
    }

    private short[] B(short[] sArr) {
        return (sArr == null || sArr.length == 0) ? sArr : new of.b(this).b(sArr);
    }

    private f.b[] E(f.b[] bVarArr) {
        f.b[] bVarArr2 = new f.b[bVarArr.length];
        for (int i11 = 0; i11 < bVarArr.length; i11++) {
            f.b bVar = bVarArr[i11];
            bVarArr2[i11] = new f.b(D(bVar.f40584a), bVar.f40585b, w(bVar.f40586c));
        }
        return bVarArr2;
    }

    private int[] F(int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr2[i11] = I(iArr[i11]);
        }
        return iArr2;
    }

    private h.a[] u(h.a[] aVarArr) {
        if (aVarArr == null || aVarArr.length == 0) {
            return aVarArr;
        }
        h.a[] aVarArr2 = new h.a[aVarArr.length];
        for (int i11 = 0; i11 < aVarArr.length; i11++) {
            h.a aVar = aVarArr[i11];
            int length = aVar.f40602a.length;
            int[] iArr = new int[length];
            for (int i12 = 0; i12 < length; i12++) {
                iArr[i12] = J(aVar.f40602a[i12]);
            }
            aVarArr2[i11] = new h.a(iArr, aVar.f40603b, aVar.f40604c, aVar.f40605d);
        }
        return aVarArr2;
    }

    private byte[] y(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        C0861a c0861a = new C0861a(byteArrayInputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length + 512);
        b bVar = new b(byteArrayOutputStream);
        while (true) {
            int i11 = byteArrayInputStream.read() & 255;
            byteArrayOutputStream.write(i11);
            if (i11 != 9) {
                switch (i11) {
                    case 0:
                        return byteArrayOutputStream.toByteArray();
                    case 1:
                        p.e(bVar, p.b(c0861a));
                        break;
                    case 2:
                        p.d(bVar, p.a(c0861a));
                        break;
                    case 3:
                    case 4:
                        p.e(bVar, p.b(c0861a));
                        p.f(bVar, I(p.c(c0861a)));
                        p.f(bVar, J(p.c(c0861a)));
                        if (i11 == 4) {
                            p.f(bVar, I(p.c(c0861a)));
                        }
                        break;
                    case 5:
                    case 6:
                        p.e(bVar, p.b(c0861a));
                        break;
                }
            } else {
                p.f(bVar, I(p.c(c0861a)));
            }
        }
    }

    public abstract int C(int i11);

    public abstract int D(int i11);

    public abstract int G(int i11);

    public abstract int H(int i11);

    public abstract int I(int i11);

    public abstract int J(int i11);

    public abstract int K(int i11);

    public com.tencent.tinker.android.dex.a a(com.tencent.tinker.android.dex.a aVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(aVar.f40570c.f40637b.length);
        new e(new d(byteArrayOutputStream)).d(aVar.b());
        return new com.tencent.tinker.android.dex.a(aVar.f40685a, aVar.f40569b, new l(aVar.f40570c.f40685a, byteArrayOutputStream.toByteArray()));
    }

    public com.tencent.tinker.android.dex.b b(com.tencent.tinker.android.dex.b bVar) {
        int length = bVar.f40571b.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = p(bVar.f40571b[i11]);
        }
        return new com.tencent.tinker.android.dex.b(bVar.f40685a, iArr);
    }

    public com.tencent.tinker.android.dex.c c(com.tencent.tinker.android.dex.c cVar) {
        int length = cVar.f40572b.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = q(cVar.f40572b[i11]);
        }
        return new com.tencent.tinker.android.dex.c(cVar.f40685a, iArr);
    }

    public com.tencent.tinker.android.dex.d d(com.tencent.tinker.android.dex.d dVar) {
        int iQ = q(dVar.f40573b);
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, dVar.f40574c.length, 2);
        for (int i11 = 0; i11 < iArr.length; i11++) {
            iArr[i11][0] = z(dVar.f40574c[i11][0]);
            iArr[i11][1] = q(dVar.f40574c[i11][1]);
        }
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, dVar.f40575d.length, 2);
        for (int i12 = 0; i12 < iArr2.length; i12++) {
            iArr2[i12][0] = D(dVar.f40575d[i12][0]);
            iArr2[i12][1] = q(dVar.f40575d[i12][1]);
        }
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, dVar.f40576e.length, 2);
        for (int i13 = 0; i13 < iArr3.length; i13++) {
            iArr3[i13][0] = D(dVar.f40576e[i13][0]);
            iArr3[i13][1] = r(dVar.f40576e[i13][1]);
        }
        return new com.tencent.tinker.android.dex.d(dVar.f40685a, iQ, iArr, iArr2, iArr3);
    }

    public com.tencent.tinker.android.dex.e e(com.tencent.tinker.android.dex.e eVar) {
        return new com.tencent.tinker.android.dex.e(eVar.f40685a, H(eVar.f40577b));
    }

    public f f(f fVar) {
        return new f(fVar.f40685a, A(fVar.f40578b), A(fVar.f40579c), E(fVar.f40580d), E(fVar.f40581e));
    }

    public g g(g gVar) {
        return new g(gVar.f40685a, J(gVar.f40587b), gVar.f40588c, J(gVar.f40589d), K(gVar.f40590e), I(gVar.f40591f), s(gVar.f40592g), v(gVar.f40593h), H(gVar.f40594i));
    }

    public h h(h hVar) {
        return new h(hVar.f40685a, hVar.f40595b, hVar.f40596c, hVar.f40597d, x(hVar.f40598e), B(hVar.f40599f), hVar.f40600g, u(hVar.f40601h));
    }

    public i i(i iVar) {
        return new i(iVar.f40685a, iVar.f40609b, F(iVar.f40610c), y(iVar.f40611d));
    }

    public l j(l lVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(lVar.f40637b.length);
        new e(new c(byteArrayOutputStream)).e(new n(lVar, 28));
        return new l(lVar.f40685a, byteArrayOutputStream.toByteArray());
    }

    public o k(o oVar) {
        return new o(oVar.f40685a, J(oVar.f40644b), J(oVar.f40645c), I(oVar.f40646d));
    }

    public MethodHandle l(MethodHandle methodHandle) {
        return new MethodHandle(methodHandle.f40685a, methodHandle.f40564b, methodHandle.f40565c, methodHandle.f40564b.isField() ? z(methodHandle.f40566d) : D(methodHandle.f40566d), methodHandle.f40567e);
    }

    public q m(q qVar) {
        return new q(qVar.f40685a, J(qVar.f40647b), G(qVar.f40648c), I(qVar.f40649d));
    }

    public s n(s sVar) {
        return new s(sVar.f40685a, I(sVar.f40650b), J(sVar.f40651c), K(sVar.f40652d));
    }

    public w o(w wVar) {
        if (wVar == w.f40686c) {
            return wVar;
        }
        int length = wVar.f40687b.length;
        short[] sArr = new short[length];
        for (int i11 = 0; i11 < length; i11++) {
            sArr[i11] = (short) J(wVar.f40687b[i11]);
        }
        return new w(wVar.f40685a, sArr);
    }

    public abstract int p(int i11);

    public abstract int q(int i11);

    public abstract int r(int i11);

    public abstract int s(int i11);

    public abstract int t(int i11);

    public abstract int v(int i11);

    public abstract int w(int i11);

    public abstract int x(int i11);

    public abstract int z(int i11);
}
