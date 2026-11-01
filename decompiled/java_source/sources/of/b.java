package of;

import com.tencent.tinker.android.dex.DexException;
import hf.d;
import hf.e;
import hf.f;
import hf.h;
import hf.i;
import java.io.EOFException;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final of.a f70983a;

    private final class a extends e {
        a(e eVar) {
            super(eVar);
        }

        private int m(int i11, int i12) {
            switch (i12) {
                case 2:
                    return b.this.f70983a.J(i11);
                case 3:
                    return b.this.f70983a.I(i11);
                case 4:
                    return b.this.f70983a.D(i11);
                case 5:
                    return b.this.f70983a.z(i11);
                case 6:
                    throw new IllegalArgumentException("METHOD_AND_PROTO_REF should not use this method to do transform.");
                case 7:
                    return b.this.f70983a.t(i11);
                case 8:
                    return b.this.f70983a.C(i11);
                case 9:
                    return b.this.f70983a.G(i11);
                default:
                    return i11;
            }
        }

        @Override // hf.e
        public void b(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17, int i18, int i19, int i20) {
            super.b(i11, i12, m(i13, i14), i14, i15, j11, i16, i17, i18, i19, i20);
        }

        @Override // hf.e
        public void c(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17, int i18, int i19) {
            super.c(i11, i12, m(i13, i14), i14, i15, j11, i16, i17, i18, i19);
        }

        @Override // hf.e
        public void d(int i11, int i12, int i13, int i14, int i15, int[] iArr) {
            super.d(i11, i12, b.this.f70983a.D(i13), i14, b.this.f70983a.G(i15), iArr);
        }

        @Override // hf.e
        public void e(int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            super.e(i11, i12, b.this.f70983a.D(i13), i14, i15, i16, b.this.f70983a.G(i17));
        }

        @Override // hf.e
        public void f(int i11, int i12, int i13, int i14, int i15, long j11, int i16) {
            super.f(i11, i12, m(i13, i14), i14, i15, j11, i16);
        }

        @Override // hf.e
        public void h(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17) {
            super.h(i11, i12, m(i13, i14), i14, i15, j11, i16, i17);
        }

        @Override // hf.e
        public void j(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17, int i18) {
            super.j(i11, i12, m(i13, i14), i14, i15, j11, i16, i17, i18);
        }

        @Override // hf.e
        public void k(int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17) {
            super.k(i11, i12, m(i13, i14), i14, i15, j11, i16, i17);
        }

        @Override // hf.e
        public void l(int i11, int i12, int i13, int i14, int i15, long j11) {
            super.l(i11, i12, m(i13, i14), i14, i15, j11);
        }
    }

    public b(of.a aVar) {
        this.f70983a = aVar;
    }

    public short[] b(short[] sArr) {
        i iVar = new i(sArr.length);
        hf.c cVar = new hf.c();
        f fVar = new f(iVar, cVar);
        d dVar = new d(new h(sArr));
        try {
            dVar.a(new a(cVar));
            dVar.a(new a(fVar));
            return iVar.g();
        } catch (EOFException e11) {
            throw new DexException(e11);
        }
    }
}
