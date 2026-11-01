package m4;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.x;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.p0;

/* JADX INFO: loaded from: classes2.dex */
public class i extends a {
    private final n4.a A;
    private n4.q B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f69235r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f69236s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final x f69237t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final x f69238u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final RectF f69239v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final GradientType f69240w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f69241x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final n4.a f69242y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final n4.a f69243z;

    public i(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.a aVar2) {
        super(lottieDrawable, aVar, aVar2.b().toPaintCap(), aVar2.g().toPaintJoin(), aVar2.i(), aVar2.k(), aVar2.m(), aVar2.h(), aVar2.c());
        this.f69237t = new x();
        this.f69238u = new x();
        this.f69239v = new RectF();
        this.f69235r = aVar2.j();
        this.f69240w = aVar2.f();
        this.f69236s = aVar2.n();
        this.f69241x = (int) (lottieDrawable.O().d() / 32.0f);
        n4.a aVarA = aVar2.e().a();
        this.f69242y = aVarA;
        aVarA.a(this);
        aVar.i(aVarA);
        n4.a aVarA2 = aVar2.l().a();
        this.f69243z = aVarA2;
        aVarA2.a(this);
        aVar.i(aVarA2);
        n4.a aVarA3 = aVar2.d().a();
        this.A = aVarA3;
        aVarA3.a(this);
        aVar.i(aVarA3);
    }

    private int[] j(int[] iArr) {
        n4.q qVar = this.B;
        if (qVar != null) {
            Integer[] numArr = (Integer[]) qVar.h();
            int i11 = 0;
            if (iArr.length == numArr.length) {
                while (i11 < iArr.length) {
                    iArr[i11] = numArr[i11].intValue();
                    i11++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i11 < numArr.length) {
                    iArr[i11] = numArr[i11].intValue();
                    i11++;
                }
            }
        }
        return iArr;
    }

    private int k() {
        int iRound = Math.round(this.f69243z.f() * this.f69241x);
        int iRound2 = Math.round(this.A.f() * this.f69241x);
        int iRound3 = Math.round(this.f69242y.f() * this.f69241x);
        int i11 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i11 = i11 * 31 * iRound2;
        }
        return iRound3 != 0 ? i11 * 31 * iRound3 : i11;
    }

    private LinearGradient l() {
        long jK = k();
        LinearGradient linearGradient = (LinearGradient) this.f69237t.e(jK);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointF = (PointF) this.f69243z.h();
        PointF pointF2 = (PointF) this.A.h();
        r4.d dVar = (r4.d) this.f69242y.h();
        LinearGradient linearGradient2 = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, j(dVar.d()), dVar.e(), Shader.TileMode.CLAMP);
        this.f69237t.k(jK, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient m() {
        long jK = k();
        RadialGradient radialGradient = (RadialGradient) this.f69238u.e(jK);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointF = (PointF) this.f69243z.h();
        PointF pointF2 = (PointF) this.A.h();
        r4.d dVar = (r4.d) this.f69242y.h();
        int[] iArrJ = j(dVar.d());
        float[] fArrE = dVar.e();
        float f11 = pointF.x;
        float f12 = pointF.y;
        RadialGradient radialGradient2 = new RadialGradient(f11, f12, (float) Math.hypot(pointF2.x - f11, pointF2.y - f12), iArrJ, fArrE, Shader.TileMode.CLAMP);
        this.f69238u.k(jK, radialGradient2);
        return radialGradient2;
    }

    @Override // m4.a, p4.e
    public void b(Object obj, w4.c cVar) {
        super.b(obj, cVar);
        if (obj == p0.L) {
            n4.q qVar = this.B;
            if (qVar != null) {
                this.f69167f.H(qVar);
            }
            if (cVar == null) {
                this.B = null;
                return;
            }
            n4.q qVar2 = new n4.q(cVar);
            this.B = qVar2;
            qVar2.a(this);
            this.f69167f.i(this.B);
        }
    }

    @Override // m4.c
    public String getName() {
        return this.f69235r;
    }

    @Override // m4.a, m4.e
    public void h(Canvas canvas, Matrix matrix, int i11) {
        if (this.f69236s) {
            return;
        }
        f(this.f69239v, matrix, false);
        Shader shaderL = this.f69240w == GradientType.LINEAR ? l() : m();
        shaderL.setLocalMatrix(matrix);
        this.f69170i.setShader(shaderL);
        super.h(canvas, matrix, i11);
    }
}
