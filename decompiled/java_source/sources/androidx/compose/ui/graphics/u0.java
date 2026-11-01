package androidx.compose.ui.graphics;

import android.graphics.RectF;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class u0 implements Path {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final android.graphics.Path f4655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RectF f4656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[] f4657d;

    /* JADX WARN: Multi-variable type inference failed */
    public u0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public u0(android.graphics.Path path) {
        this.f4655b = path;
    }

    public /* synthetic */ u0(android.graphics.Path path, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new android.graphics.Path() : path);
    }

    private final void q(y.i iVar) {
        if (Float.isNaN(iVar.f()) || Float.isNaN(iVar.i()) || Float.isNaN(iVar.g()) || Float.isNaN(iVar.c())) {
            x0.c("Invalid rectangle, make sure no value is NaN");
        }
    }

    @Override // androidx.compose.ui.graphics.Path
    public boolean a() {
        return this.f4655b.isConvex();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void b() {
        this.f4655b.rewind();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void c(float f11, float f12) {
        this.f4655b.rMoveTo(f11, f12);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void close() {
        this.f4655b.close();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void d(float f11, float f12, float f13, float f14, float f15, float f16) {
        this.f4655b.rCubicTo(f11, f12, f13, f14, f15, f16);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void e(int i11) {
        this.f4655b.setFillType(q4.d(i11, q4.f4628a.a()) ? android.graphics.Path.FillType.EVEN_ODD : android.graphics.Path.FillType.WINDING);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void f(float f11, float f12, float f13, float f14) {
        this.f4655b.quadTo(f11, f12, f13, f14);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void g(float f11, float f12, float f13, float f14) {
        this.f4655b.rQuadTo(f11, f12, f13, f14);
    }

    @Override // androidx.compose.ui.graphics.Path
    public y.i getBounds() {
        if (this.f4656c == null) {
            this.f4656c = new RectF();
        }
        RectF rectF = this.f4656c;
        Intrinsics.e(rectF);
        this.f4655b.computeBounds(rectF, true);
        return new y.i(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // androidx.compose.ui.graphics.Path
    public int h() {
        return this.f4655b.getFillType() == android.graphics.Path.FillType.EVEN_ODD ? q4.f4628a.a() : q4.f4628a.b();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void i(y.k kVar, Path.Direction direction) {
        if (this.f4656c == null) {
            this.f4656c = new RectF();
        }
        RectF rectF = this.f4656c;
        Intrinsics.e(rectF);
        rectF.set(kVar.e(), kVar.g(), kVar.f(), kVar.a());
        if (this.f4657d == null) {
            this.f4657d = new float[8];
        }
        float[] fArr = this.f4657d;
        Intrinsics.e(fArr);
        fArr[0] = y.a.d(kVar.h());
        fArr[1] = y.a.e(kVar.h());
        fArr[2] = y.a.d(kVar.i());
        fArr[3] = y.a.e(kVar.i());
        fArr[4] = y.a.d(kVar.c());
        fArr[5] = y.a.e(kVar.c());
        fArr[6] = y.a.d(kVar.b());
        fArr[7] = y.a.e(kVar.b());
        android.graphics.Path path = this.f4655b;
        RectF rectF2 = this.f4656c;
        Intrinsics.e(rectF2);
        float[] fArr2 = this.f4657d;
        Intrinsics.e(fArr2);
        path.addRoundRect(rectF2, fArr2, x0.d(direction));
    }

    @Override // androidx.compose.ui.graphics.Path
    public boolean isEmpty() {
        return this.f4655b.isEmpty();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void j(float f11, float f12) {
        this.f4655b.moveTo(f11, f12);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void k(float f11, float f12, float f13, float f14, float f15, float f16) {
        this.f4655b.cubicTo(f11, f12, f13, f14, f15, f16);
    }

    @Override // androidx.compose.ui.graphics.Path
    public boolean l(Path path, Path path2, int i11) {
        android.graphics.Path.Op op2;
        s4.a aVar = s4.f4638a;
        if (s4.f(i11, aVar.a())) {
            op2 = android.graphics.Path.Op.DIFFERENCE;
        } else if (s4.f(i11, aVar.b())) {
            op2 = android.graphics.Path.Op.INTERSECT;
        } else if (s4.f(i11, aVar.c())) {
            op2 = android.graphics.Path.Op.REVERSE_DIFFERENCE;
        } else {
            op2 = s4.f(i11, aVar.d()) ? android.graphics.Path.Op.UNION : android.graphics.Path.Op.XOR;
        }
        android.graphics.Path path3 = this.f4655b;
        if (!(path instanceof u0)) {
            throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
        }
        android.graphics.Path pathP = ((u0) path).p();
        if (path2 instanceof u0) {
            return path3.op(pathP, ((u0) path2).p(), op2);
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override // androidx.compose.ui.graphics.Path
    public void m(float f11, float f12) {
        this.f4655b.rLineTo(f11, f12);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void n(y.i iVar, Path.Direction direction) {
        q(iVar);
        if (this.f4656c == null) {
            this.f4656c = new RectF();
        }
        RectF rectF = this.f4656c;
        Intrinsics.e(rectF);
        rectF.set(iVar.f(), iVar.i(), iVar.g(), iVar.c());
        android.graphics.Path path = this.f4655b;
        RectF rectF2 = this.f4656c;
        Intrinsics.e(rectF2);
        path.addRect(rectF2, x0.d(direction));
    }

    @Override // androidx.compose.ui.graphics.Path
    public void o(float f11, float f12) {
        this.f4655b.lineTo(f11, f12);
    }

    public final android.graphics.Path p() {
        return this.f4655b;
    }

    @Override // androidx.compose.ui.graphics.Path
    public void reset() {
        this.f4655b.reset();
    }
}
