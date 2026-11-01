package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import android.os.Build;
import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.LocaleSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.ScaleXSpan;
import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.graphics.y4;
import androidx.compose.ui.graphics.z4;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.font.n;
import androidx.compose.ui.text.font.o;
import androidx.compose.ui.text.font.p;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.m;
import androidx.compose.ui.text.x;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;
import l0.l;
import n0.i;
import o0.w;
import o0.y;
import z.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class SpannableExtensions_androidKt {
    private static final MetricAffectingSpan a(long j11, o0.e eVar) {
        long jG = w.g(j11);
        y.a aVar = y.f70632b;
        if (y.g(jG, aVar.b())) {
            return new l0.f(eVar.h0(j11));
        }
        if (y.g(jG, aVar.a())) {
            return new l0.e(w.h(j11));
        }
        return null;
    }

    public static final void b(x xVar, List list, Function3 function3) {
        if (list.size() <= 1) {
            if (list.isEmpty()) {
                return;
            }
            function3.invoke(f(xVar, (x) ((AnnotatedString.c) list.get(0)).e()), Integer.valueOf(((AnnotatedString.c) list.get(0)).f()), Integer.valueOf(((AnnotatedString.c) list.get(0)).d()));
            return;
        }
        int size = list.size();
        int i11 = size * 2;
        Integer[] numArr = new Integer[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            numArr[i12] = 0;
        }
        int size2 = list.size();
        for (int i13 = 0; i13 < size2; i13++) {
            AnnotatedString.c cVar = (AnnotatedString.c) list.get(i13);
            numArr[i13] = Integer.valueOf(cVar.f());
            numArr[i13 + size] = Integer.valueOf(cVar.d());
        }
        ArraysKt.F(numArr);
        int iIntValue = ((Number) ArraysKt.V(numArr)).intValue();
        for (int i14 = 0; i14 < i11; i14++) {
            Integer num = numArr[i14];
            int iIntValue2 = num.intValue();
            if (iIntValue2 != iIntValue) {
                int size3 = list.size();
                x xVarF = xVar;
                for (int i15 = 0; i15 < size3; i15++) {
                    AnnotatedString.c cVar2 = (AnnotatedString.c) list.get(i15);
                    if (cVar2.f() != cVar2.d() && androidx.compose.ui.text.d.k(iIntValue, iIntValue2, cVar2.f(), cVar2.d())) {
                        xVarF = f(xVarF, (x) cVar2.e());
                    }
                }
                if (xVarF != null) {
                    function3.invoke(xVarF, Integer.valueOf(iIntValue), num);
                }
                iIntValue = iIntValue2;
            }
        }
    }

    private static final boolean c(x xVar) {
        long jG = w.g(xVar.o());
        y.a aVar = y.f70632b;
        return y.g(jG, aVar.b()) || y.g(w.g(xVar.o()), aVar.a());
    }

    private static final boolean d(d0 d0Var) {
        return f.d(d0Var.L()) || d0Var.n() != null;
    }

    private static final boolean e(o0.e eVar) {
        return ((double) eVar.C0()) > 1.05d;
    }

    private static final x f(x xVar, x xVar2) {
        return xVar == null ? xVar2 : xVar.x(xVar2);
    }

    private static final float g(long j11, float f11, o0.e eVar) {
        float fH;
        long jG = w.g(j11);
        y.a aVar = y.f70632b;
        if (y.g(jG, aVar.b())) {
            if (!e(eVar)) {
                return eVar.h0(j11);
            }
            fH = w.h(j11) / w.h(eVar.Q(f11));
        } else {
            if (!y.g(jG, aVar.a())) {
                return Float.NaN;
            }
            fH = w.h(j11);
        }
        return fH * f11;
    }

    public static final void h(Spannable spannable, long j11, int i11, int i12) {
        if (j11 != 16) {
            u(spannable, new BackgroundColorSpan(w1.j(j11)), i11, i12);
        }
    }

    private static final void i(Spannable spannable, androidx.compose.ui.text.style.a aVar, int i11, int i12) {
        if (aVar != null) {
            u(spannable, new l0.a(aVar.h()), i11, i12);
        }
    }

    private static final void j(Spannable spannable, j1 j1Var, float f11, int i11, int i12) {
        if (j1Var != null) {
            if (j1Var instanceof b5) {
                k(spannable, ((b5) j1Var).b(), i11, i12);
            } else if (j1Var instanceof y4) {
                u(spannable, new ShaderBrushSpan((y4) j1Var, f11), i11, i12);
            }
        }
    }

    public static final void k(Spannable spannable, long j11, int i11, int i12) {
        if (j11 != 16) {
            u(spannable, new ForegroundColorSpan(w1.j(j11)), i11, i12);
        }
    }

    private static final void l(Spannable spannable, h hVar, int i11, int i12) {
        if (hVar != null) {
            u(spannable, new androidx.compose.ui.text.platform.style.a(hVar), i11, i12);
        }
    }

    private static final void m(final Spannable spannable, d0 d0Var, List list, final Function4 function4) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            AnnotatedString.c cVar = (AnnotatedString.c) obj;
            if (f.d((x) cVar.e()) || ((x) cVar.e()).m() != null) {
                arrayList.add(obj);
            }
        }
        b(d(d0Var) ? new x(0L, 0L, d0Var.o(), d0Var.m(), d0Var.n(), d0Var.j(), null, 0L, null, null, null, 0L, null, null, null, null, 65475, null) : null, arrayList, new Function3<x, Integer, Integer, Unit>() { // from class: androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt$setFontAttributes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4) {
                invoke((x) obj2, ((Number) obj3).intValue(), ((Number) obj4).intValue());
                return Unit.f67061a;
            }

            public final void invoke(x xVar, int i12, int i13) {
                Spannable spannable2 = spannable;
                Function4<androidx.compose.ui.text.font.h, p, n, o, Typeface> function5 = function4;
                androidx.compose.ui.text.font.h hVarI = xVar.i();
                p pVarN = xVar.n();
                if (pVarN == null) {
                    pVarN = p.f6149b.a();
                }
                n nVarL = xVar.l();
                n nVarC = n.c(nVarL != null ? nVarL.i() : n.f6139b.b());
                o oVarM = xVar.m();
                spannable2.setSpan(new l0.o((Typeface) function5.invoke(hVarI, pVarN, nVarC, o.e(oVarM != null ? oVarM.k() : o.f6143b.a()))), i12, i13, 33);
            }
        });
    }

    private static final void n(Spannable spannable, String str, int i11, int i12) {
        if (str != null) {
            u(spannable, new l0.b(str), i11, i12);
        }
    }

    public static final void o(Spannable spannable, long j11, o0.e eVar, int i11, int i12) {
        long jG = w.g(j11);
        y.a aVar = y.f70632b;
        if (y.g(jG, aVar.b())) {
            u(spannable, new AbsoluteSizeSpan(MathKt.d(eVar.h0(j11)), false), i11, i12);
        } else if (y.g(jG, aVar.a())) {
            u(spannable, new RelativeSizeSpan(w.h(j11)), i11, i12);
        }
    }

    private static final void p(Spannable spannable, m mVar, int i11, int i12) {
        if (mVar != null) {
            u(spannable, new ScaleXSpan(mVar.b()), i11, i12);
            u(spannable, new l0.m(mVar.c()), i11, i12);
        }
    }

    public static final void q(Spannable spannable, long j11, float f11, o0.e eVar, androidx.compose.ui.text.style.g gVar) {
        float fG = g(j11, f11, eVar);
        if (Float.isNaN(fG)) {
            return;
        }
        u(spannable, new l0.h(fG, 0, (spannable.length() == 0 || StringsKt.w1(spannable) == '\n') ? spannable.length() + 1 : spannable.length(), androidx.compose.ui.text.style.g.c.f(gVar.c()), androidx.compose.ui.text.style.g.c.g(gVar.c()), gVar.b()), 0, spannable.length());
    }

    public static final void r(Spannable spannable, long j11, float f11, o0.e eVar) {
        float fG = g(j11, f11, eVar);
        if (Float.isNaN(fG)) {
            return;
        }
        u(spannable, new l0.g(fG), 0, spannable.length());
    }

    public static final void s(Spannable spannable, i iVar, int i11, int i12) {
        Object localeSpan;
        if (iVar != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                localeSpan = d.f6321a.a(iVar);
            } else {
                localeSpan = new LocaleSpan((iVar.isEmpty() ? n0.h.f70059b.a() : iVar.e(0)).a());
            }
            u(spannable, localeSpan, i11, i12);
        }
    }

    private static final void t(Spannable spannable, z4 z4Var, int i11, int i12) {
        if (z4Var != null) {
            u(spannable, new l(w1.j(z4Var.c()), y.g.m(z4Var.d()), y.g.n(z4Var.d()), f.b(z4Var.b())), i11, i12);
        }
    }

    public static final void u(Spannable spannable, Object obj, int i11, int i12) {
        spannable.setSpan(obj, i11, i12, 33);
    }

    private static final void v(Spannable spannable, AnnotatedString.c cVar, o0.e eVar) {
        int iF = cVar.f();
        int iD = cVar.d();
        x xVar = (x) cVar.e();
        i(spannable, xVar.e(), iF, iD);
        k(spannable, xVar.g(), iF, iD);
        j(spannable, xVar.f(), xVar.c(), iF, iD);
        x(spannable, xVar.s(), iF, iD);
        o(spannable, xVar.k(), eVar, iF, iD);
        n(spannable, xVar.j(), iF, iD);
        p(spannable, xVar.u(), iF, iD);
        s(spannable, xVar.p(), iF, iD);
        h(spannable, xVar.d(), iF, iD);
        t(spannable, xVar.r(), iF, iD);
        l(spannable, xVar.h(), iF, iD);
    }

    public static final void w(Spannable spannable, d0 d0Var, List list, o0.e eVar, Function4 function4) {
        MetricAffectingSpan metricAffectingSpanA;
        m(spannable, d0Var, list, function4);
        int size = list.size();
        boolean z10 = false;
        for (int i11 = 0; i11 < size; i11++) {
            AnnotatedString.c cVar = (AnnotatedString.c) list.get(i11);
            int iF = cVar.f();
            int iD = cVar.d();
            if (iF >= 0 && iF < spannable.length() && iD > iF && iD <= spannable.length()) {
                v(spannable, cVar, eVar);
                if (c((x) cVar.e())) {
                    z10 = true;
                }
            }
        }
        if (z10) {
            int size2 = list.size();
            for (int i12 = 0; i12 < size2; i12++) {
                AnnotatedString.c cVar2 = (AnnotatedString.c) list.get(i12);
                int iF2 = cVar2.f();
                int iD2 = cVar2.d();
                x xVar = (x) cVar2.e();
                if (iF2 >= 0 && iF2 < spannable.length() && iD2 > iF2 && iD2 <= spannable.length() && (metricAffectingSpanA = a(xVar.o(), eVar)) != null) {
                    u(spannable, metricAffectingSpanA, iF2, iD2);
                }
            }
        }
    }

    public static final void x(Spannable spannable, androidx.compose.ui.text.style.i iVar, int i11, int i12) {
        if (iVar != null) {
            androidx.compose.ui.text.style.i.a aVar = androidx.compose.ui.text.style.i.f6409b;
            u(spannable, new l0.n(iVar.d(aVar.d()), iVar.d(aVar.b())), i11, i12);
        }
    }

    public static final void y(Spannable spannable, androidx.compose.ui.text.style.n nVar, float f11, o0.e eVar) {
        float fH;
        if (nVar != null) {
            if ((w.e(nVar.b(), o0.x.c(0)) && w.e(nVar.c(), o0.x.c(0))) || o0.x.d(nVar.b()) || o0.x.d(nVar.c())) {
                return;
            }
            long jG = w.g(nVar.b());
            y.a aVar = y.f70632b;
            float fH2 = 0.0f;
            if (y.g(jG, aVar.b())) {
                fH = eVar.h0(nVar.b());
            } else {
                fH = y.g(jG, aVar.a()) ? w.h(nVar.b()) * f11 : 0.0f;
            }
            long jG2 = w.g(nVar.c());
            if (y.g(jG2, aVar.b())) {
                fH2 = eVar.h0(nVar.c());
            } else if (y.g(jG2, aVar.a())) {
                fH2 = w.h(nVar.c()) * f11;
            }
            u(spannable, new LeadingMarginSpan.Standard((int) Math.ceil(fH), (int) Math.ceil(fH2)), 0, spannable.length());
        }
    }
}
