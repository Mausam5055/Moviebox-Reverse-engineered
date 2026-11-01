package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import android.os.Build;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.text.font.h;
import androidx.compose.ui.text.font.n;
import androidx.compose.ui.text.font.o;
import androidx.compose.ui.text.font.p;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.style.m;
import androidx.compose.ui.text.x;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import n0.i;
import o0.w;
import o0.y;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    public static final x a(AndroidTextPaint androidTextPaint, x xVar, Function4 function4, o0.e eVar, boolean z10) {
        long jG = w.g(xVar.k());
        y.a aVar = y.f70632b;
        if (y.g(jG, aVar.b())) {
            androidTextPaint.setTextSize(eVar.h0(xVar.k()));
        } else if (y.g(jG, aVar.a())) {
            androidTextPaint.setTextSize(androidTextPaint.getTextSize() * w.h(xVar.k()));
        }
        if (d(xVar)) {
            h hVarI = xVar.i();
            p pVarN = xVar.n();
            if (pVarN == null) {
                pVarN = p.f6149b.a();
            }
            n nVarL = xVar.l();
            n nVarC = n.c(nVarL != null ? nVarL.i() : n.f6139b.b());
            o oVarM = xVar.m();
            androidTextPaint.setTypeface((Typeface) function4.invoke(hVarI, pVarN, nVarC, o.e(oVarM != null ? oVarM.k() : o.f6143b.a())));
        }
        if (xVar.p() != null && !Intrinsics.c(xVar.p(), i.f70061c.a())) {
            if (Build.VERSION.SDK_INT >= 24) {
                d.f6321a.b(androidTextPaint, xVar.p());
            } else {
                androidTextPaint.setTextLocale((xVar.p().isEmpty() ? n0.h.f70059b.a() : xVar.p().e(0)).a());
            }
        }
        if (xVar.j() != null && !Intrinsics.c(xVar.j(), "")) {
            androidTextPaint.setFontFeatureSettings(xVar.j());
        }
        if (xVar.u() != null && !Intrinsics.c(xVar.u(), m.f6425c.a())) {
            androidTextPaint.setTextScaleX(androidTextPaint.getTextScaleX() * xVar.u().b());
            androidTextPaint.setTextSkewX(androidTextPaint.getTextSkewX() + xVar.u().c());
        }
        androidTextPaint.f(xVar.g());
        androidTextPaint.e(xVar.f(), y.m.f78491b.a(), xVar.c());
        androidTextPaint.h(xVar.r());
        androidTextPaint.i(xVar.s());
        androidTextPaint.g(xVar.h());
        if (y.g(w.g(xVar.o()), aVar.b()) && w.h(xVar.o()) != 0.0f) {
            float textSize = androidTextPaint.getTextSize() * androidTextPaint.getTextScaleX();
            float fH0 = eVar.h0(xVar.o());
            if (textSize != 0.0f) {
                androidTextPaint.setLetterSpacing(fH0 / textSize);
            }
        } else if (y.g(w.g(xVar.o()), aVar.a())) {
            androidTextPaint.setLetterSpacing(w.h(xVar.o()));
        }
        return c(xVar.o(), z10, xVar.d(), xVar.e());
    }

    public static final float b(float f11) {
        if (f11 == 0.0f) {
            return Float.MIN_VALUE;
        }
        return f11;
    }

    private static final x c(long j11, boolean z10, long j12, androidx.compose.ui.text.style.a aVar) {
        long jE = j12;
        boolean z11 = false;
        boolean z12 = z10 && y.g(w.g(j11), y.f70632b.b()) && w.h(j11) != 0.0f;
        u1.a aVar2 = u1.f4658b;
        boolean z13 = (u1.m(jE, aVar2.e()) || u1.m(jE, aVar2.d())) ? false : true;
        if (aVar != null) {
            if (!androidx.compose.ui.text.style.a.e(aVar.h(), androidx.compose.ui.text.style.a.f6354b.a())) {
                z11 = true;
            }
        }
        if (!z12 && !z13 && !z11) {
            return null;
        }
        long jA = z12 ? j11 : w.f70628b.a();
        if (!z13) {
            jE = aVar2.e();
        }
        return new x(0L, 0L, null, null, null, null, null, jA, z11 ? aVar : null, null, null, jE, null, null, null, null, 63103, null);
    }

    public static final boolean d(x xVar) {
        return (xVar.i() == null && xVar.l() == null && xVar.n() == null) ? false : true;
    }

    public static final void e(AndroidTextPaint androidTextPaint, androidx.compose.ui.text.style.o oVar) {
        if (oVar == null) {
            oVar = androidx.compose.ui.text.style.o.f6433c.a();
        }
        androidTextPaint.setFlags(oVar.c() ? androidTextPaint.getFlags() | 128 : androidTextPaint.getFlags() & (-129));
        int iB = oVar.b();
        androidx.compose.ui.text.style.o.b.a aVar = androidx.compose.ui.text.style.o.b.f6438a;
        if (androidx.compose.ui.text.style.o.b.e(iB, aVar.b())) {
            androidTextPaint.setFlags(androidTextPaint.getFlags() | 64);
            androidTextPaint.setHinting(0);
        } else if (androidx.compose.ui.text.style.o.b.e(iB, aVar.a())) {
            androidTextPaint.getFlags();
            androidTextPaint.setHinting(1);
        } else if (!androidx.compose.ui.text.style.o.b.e(iB, aVar.c())) {
            androidTextPaint.getFlags();
        } else {
            androidTextPaint.getFlags();
            androidTextPaint.setHinting(0);
        }
    }
}
