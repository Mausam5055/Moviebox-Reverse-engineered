package androidx.compose.ui.graphics;

import android.graphics.ColorSpace;
import androidx.compose.ui.graphics.colorspace.Rgb;
import java.util.function.DoubleUnaryOperator;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class v3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v3 f4677a = new v3();

    private v3() {
    }

    @JvmStatic
    public static final ColorSpace e(androidx.compose.ui.graphics.colorspace.c cVar) {
        ColorSpace.Rgb.TransferParameters transferParametersA;
        ColorSpace.Rgb rgbA;
        androidx.compose.ui.graphics.colorspace.g gVar = androidx.compose.ui.graphics.colorspace.g.f4353a;
        if (Intrinsics.c(cVar, gVar.w())) {
            return ColorSpace.get(ColorSpace.Named.SRGB);
        }
        if (Intrinsics.c(cVar, gVar.e())) {
            return ColorSpace.get(ColorSpace.Named.ACES);
        }
        if (Intrinsics.c(cVar, gVar.f())) {
            return ColorSpace.get(ColorSpace.Named.ACESCG);
        }
        if (Intrinsics.c(cVar, gVar.g())) {
            return ColorSpace.get(ColorSpace.Named.ADOBE_RGB);
        }
        if (Intrinsics.c(cVar, gVar.h())) {
            return ColorSpace.get(ColorSpace.Named.BT2020);
        }
        if (Intrinsics.c(cVar, gVar.i())) {
            return ColorSpace.get(ColorSpace.Named.BT709);
        }
        if (Intrinsics.c(cVar, gVar.j())) {
            return ColorSpace.get(ColorSpace.Named.CIE_LAB);
        }
        if (Intrinsics.c(cVar, gVar.k())) {
            return ColorSpace.get(ColorSpace.Named.CIE_XYZ);
        }
        if (Intrinsics.c(cVar, gVar.m())) {
            return ColorSpace.get(ColorSpace.Named.DCI_P3);
        }
        if (Intrinsics.c(cVar, gVar.n())) {
            return ColorSpace.get(ColorSpace.Named.DISPLAY_P3);
        }
        if (Intrinsics.c(cVar, gVar.o())) {
            return ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB);
        }
        if (Intrinsics.c(cVar, gVar.p())) {
            return ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
        }
        if (Intrinsics.c(cVar, gVar.q())) {
            return ColorSpace.get(ColorSpace.Named.LINEAR_SRGB);
        }
        if (Intrinsics.c(cVar, gVar.r())) {
            return ColorSpace.get(ColorSpace.Named.NTSC_1953);
        }
        if (Intrinsics.c(cVar, gVar.u())) {
            return ColorSpace.get(ColorSpace.Named.PRO_PHOTO_RGB);
        }
        if (Intrinsics.c(cVar, gVar.v())) {
            return ColorSpace.get(ColorSpace.Named.SMPTE_C);
        }
        if (!(cVar instanceof Rgb)) {
            return ColorSpace.get(ColorSpace.Named.SRGB);
        }
        Rgb rgb = (Rgb) cVar;
        float[] fArrC = rgb.N().c();
        androidx.compose.ui.graphics.colorspace.x xVarL = rgb.L();
        if (xVarL != null) {
            f3.a();
            transferParametersA = y1.a(xVarL.a(), xVarL.b(), xVarL.c(), xVarL.d(), xVarL.e(), xVarL.f(), xVarL.g());
        } else {
            transferParametersA = null;
        }
        if (transferParametersA != null) {
            l3.a();
            rgbA = j2.a(cVar.f(), rgb.K(), fArrC, transferParametersA);
        } else {
            l3.a();
            String strF = cVar.f();
            float[] fArrK = rgb.K();
            final Function1 function1H = rgb.H();
            DoubleUnaryOperator doubleUnaryOperator = new DoubleUnaryOperator() { // from class: androidx.compose.ui.graphics.r3
                @Override // java.util.function.DoubleUnaryOperator
                public final double applyAsDouble(double d11) {
                    return v3.f(function1H, d11);
                }
            };
            final Function1 function1D = rgb.D();
            rgbA = u2.a(strF, fArrK, fArrC, doubleUnaryOperator, new DoubleUnaryOperator() { // from class: androidx.compose.ui.graphics.s3
                @Override // java.util.function.DoubleUnaryOperator
                public final double applyAsDouble(double d11) {
                    return v3.g(function1D, d11);
                }
            }, cVar.d(0), cVar.c(0));
        }
        return i2.a(rgbA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double f(Function1 function1, double d11) {
        return ((Number) function1.invoke(Double.valueOf(d11))).doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double g(Function1 function1, double d11) {
        return ((Number) function1.invoke(Double.valueOf(d11))).doubleValue();
    }

    @JvmStatic
    public static final androidx.compose.ui.graphics.colorspace.c h(final ColorSpace colorSpace) {
        int id2 = colorSpace.getId();
        if (id2 == ColorSpace.Named.SRGB.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.w();
        }
        if (id2 == ColorSpace.Named.ACES.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.e();
        }
        if (id2 == ColorSpace.Named.ACESCG.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.f();
        }
        if (id2 == ColorSpace.Named.ADOBE_RGB.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.g();
        }
        if (id2 == ColorSpace.Named.BT2020.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.h();
        }
        if (id2 == ColorSpace.Named.BT709.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.i();
        }
        if (id2 == ColorSpace.Named.CIE_LAB.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.j();
        }
        if (id2 == ColorSpace.Named.CIE_XYZ.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.k();
        }
        if (id2 == ColorSpace.Named.DCI_P3.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.m();
        }
        if (id2 == ColorSpace.Named.DISPLAY_P3.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.n();
        }
        if (id2 == ColorSpace.Named.EXTENDED_SRGB.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.o();
        }
        if (id2 == ColorSpace.Named.LINEAR_EXTENDED_SRGB.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.p();
        }
        if (id2 == ColorSpace.Named.LINEAR_SRGB.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.q();
        }
        if (id2 == ColorSpace.Named.NTSC_1953.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.r();
        }
        if (id2 == ColorSpace.Named.PRO_PHOTO_RGB.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.u();
        }
        if (id2 == ColorSpace.Named.SMPTE_C.ordinal()) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.v();
        }
        if (!p2.a(colorSpace)) {
            return androidx.compose.ui.graphics.colorspace.g.f4353a.w();
        }
        ColorSpace.Rgb.TransferParameters transferParameters = q2.a(colorSpace).getTransferParameters();
        return new Rgb(q2.a(colorSpace).getName(), q2.a(colorSpace).getPrimaries(), q2.a(colorSpace).getWhitePoint().length == 3 ? new androidx.compose.ui.graphics.colorspace.y(q2.a(colorSpace).getWhitePoint()[0], q2.a(colorSpace).getWhitePoint()[1], q2.a(colorSpace).getWhitePoint()[2]) : new androidx.compose.ui.graphics.colorspace.y(q2.a(colorSpace).getWhitePoint()[0], q2.a(colorSpace).getWhitePoint()[1]), q2.a(colorSpace).getTransform(), new androidx.compose.ui.graphics.colorspace.j() { // from class: androidx.compose.ui.graphics.t3
            @Override // androidx.compose.ui.graphics.colorspace.j
            public final double a(double d11) {
                return v3.i(colorSpace, d11);
            }
        }, new androidx.compose.ui.graphics.colorspace.j() { // from class: androidx.compose.ui.graphics.u3
            @Override // androidx.compose.ui.graphics.colorspace.j
            public final double a(double d11) {
                return v3.j(colorSpace, d11);
            }
        }, colorSpace.getMinValue(0), colorSpace.getMaxValue(0), transferParameters != null ? new androidx.compose.ui.graphics.colorspace.x(transferParameters.g, transferParameters.a, transferParameters.b, transferParameters.c, transferParameters.d, transferParameters.e, transferParameters.f) : null, q2.a(colorSpace).getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double i(ColorSpace colorSpace, double d11) {
        return q2.a(colorSpace).getOetf().applyAsDouble(d11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double j(ColorSpace colorSpace, double d11) {
        return q2.a(colorSpace).getEotf().applyAsDouble(d11);
    }
}
