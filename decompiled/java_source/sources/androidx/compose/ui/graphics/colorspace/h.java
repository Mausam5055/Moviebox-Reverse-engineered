package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f4377g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f4378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f4379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f4380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f4381d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4382e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float[] f4383f;

    public static final class a {

        /* JADX INFO: renamed from: androidx.compose.ui.graphics.colorspace.h$a$a, reason: collision with other inner class name */
        public static final class C0047a extends h {
            C0047a(c cVar, int i11) {
                super(cVar, cVar, i11, null);
            }

            @Override // androidx.compose.ui.graphics.colorspace.h
            public long a(long j11) {
                return j11;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float[] b(c cVar, c cVar2, int i11) {
            if (!n.e(i11, n.f4405a.a())) {
                return null;
            }
            long jE = cVar.e();
            androidx.compose.ui.graphics.colorspace.b.a aVar = androidx.compose.ui.graphics.colorspace.b.f4344a;
            boolean zE = androidx.compose.ui.graphics.colorspace.b.e(jE, aVar.b());
            boolean zE2 = androidx.compose.ui.graphics.colorspace.b.e(cVar2.e(), aVar.b());
            if (zE && zE2) {
                return null;
            }
            if (!zE && !zE2) {
                return null;
            }
            if (!zE) {
                cVar = cVar2;
            }
            Intrinsics.f(cVar, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb");
            Rgb rgb = (Rgb) cVar;
            float[] fArrC = zE ? rgb.N().c() : k.f4388a.c();
            float[] fArrC2 = zE2 ? rgb.N().c() : k.f4388a.c();
            return new float[]{fArrC[0] / fArrC2[0], fArrC[1] / fArrC2[1], fArrC[2] / fArrC2[2]};
        }

        public final h c(c cVar) {
            return new C0047a(cVar, n.f4405a.c());
        }
    }

    public static final class b extends h {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final Rgb f4384h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final Rgb f4385i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final float[] f4386j;

        private b(Rgb rgb, Rgb rgb2, int i11) {
            super(rgb, rgb2, rgb, rgb2, i11, null, null);
            this.f4384h = rgb;
            this.f4385i = rgb2;
            this.f4386j = b(rgb, rgb2, i11);
        }

        public /* synthetic */ b(Rgb rgb, Rgb rgb2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(rgb, rgb2, i11);
        }

        private final float[] b(Rgb rgb, Rgb rgb2, int i11) {
            if (d.f(rgb.N(), rgb2.N())) {
                return d.l(rgb2.G(), rgb.M());
            }
            float[] fArrM = rgb.M();
            float[] fArrG = rgb2.G();
            float[] fArrC = rgb.N().c();
            float[] fArrC2 = rgb2.N().c();
            y yVarN = rgb.N();
            k kVar = k.f4388a;
            if (!d.f(yVarN, kVar.b())) {
                float[] fArrB = androidx.compose.ui.graphics.colorspace.a.f4339b.a().b();
                float[] fArrC3 = kVar.c();
                float[] fArrCopyOf = Arrays.copyOf(fArrC3, fArrC3.length);
                Intrinsics.g(fArrCopyOf, "copyOf(this, size)");
                fArrM = d.l(d.e(fArrB, fArrC, fArrCopyOf), rgb.M());
            }
            if (!d.f(rgb2.N(), kVar.b())) {
                float[] fArrB2 = androidx.compose.ui.graphics.colorspace.a.f4339b.a().b();
                float[] fArrC4 = kVar.c();
                float[] fArrCopyOf2 = Arrays.copyOf(fArrC4, fArrC4.length);
                Intrinsics.g(fArrCopyOf2, "copyOf(this, size)");
                fArrG = d.k(d.l(d.e(fArrB2, fArrC2, fArrCopyOf2), rgb2.M()));
            }
            if (n.e(i11, n.f4405a.a())) {
                fArrM = d.m(new float[]{fArrC[0] / fArrC2[0], fArrC[1] / fArrC2[1], fArrC[2] / fArrC2[2]}, fArrM);
            }
            return d.l(fArrG, fArrM);
        }

        @Override // androidx.compose.ui.graphics.colorspace.h
        public long a(long j11) {
            float fR = u1.r(j11);
            float fQ = u1.q(j11);
            float fO = u1.o(j11);
            float fN = u1.n(j11);
            float fA = (float) this.f4384h.E().a(fR);
            float fA2 = (float) this.f4384h.E().a(fQ);
            float fA3 = (float) this.f4384h.E().a(fO);
            float[] fArr = this.f4386j;
            return w1.a((float) this.f4385i.I().a((fArr[0] * fA) + (fArr[3] * fA2) + (fArr[6] * fA3)), (float) this.f4385i.I().a((fArr[1] * fA) + (fArr[4] * fA2) + (fArr[7] * fA3)), (float) this.f4385i.I().a((fArr[2] * fA) + (fArr[5] * fA2) + (fArr[8] * fA3)), fN, this.f4385i);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private h(c cVar, c cVar2, int i11) {
        long jE = cVar.e();
        androidx.compose.ui.graphics.colorspace.b.a aVar = androidx.compose.ui.graphics.colorspace.b.f4344a;
        this(cVar, cVar2, androidx.compose.ui.graphics.colorspace.b.e(jE, aVar.b()) ? d.d(cVar, k.f4388a.b(), null, 2, null) : cVar, androidx.compose.ui.graphics.colorspace.b.e(cVar2.e(), aVar.b()) ? d.d(cVar2, k.f4388a.b(), null, 2, null) : cVar2, i11, f4377g.b(cVar, cVar2, i11), null);
    }

    public /* synthetic */ h(c cVar, c cVar2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(cVar, cVar2, i11);
    }

    private h(c cVar, c cVar2, c cVar3, c cVar4, int i11, float[] fArr) {
        this.f4378a = cVar;
        this.f4379b = cVar2;
        this.f4380c = cVar3;
        this.f4381d = cVar4;
        this.f4382e = i11;
        this.f4383f = fArr;
    }

    public /* synthetic */ h(c cVar, c cVar2, c cVar3, c cVar4, int i11, float[] fArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(cVar, cVar2, cVar3, cVar4, i11, fArr);
    }

    public long a(long j11) {
        float fR = u1.r(j11);
        float fQ = u1.q(j11);
        float fO = u1.o(j11);
        float fN = u1.n(j11);
        long jH = this.f4380c.h(fR, fQ, fO);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jH >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jH & 4294967295L));
        float fI = this.f4380c.i(fR, fQ, fO);
        float[] fArr = this.f4383f;
        if (fArr != null) {
            fIntBitsToFloat *= fArr[0];
            fIntBitsToFloat2 *= fArr[1];
            fI *= fArr[2];
        }
        float f11 = fIntBitsToFloat;
        return this.f4381d.j(f11, fIntBitsToFloat2, fI, fN, this.f4379b);
    }
}
