package k0;

import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final d1 f66535a = new d1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f66536b = a(0, 0);

    public static final long a(int i11, int i12) {
        return g1.a((((long) i12) & 4294967295L) | (((long) i11) << 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Paint.FontMetricsInt h(e1 e1Var, TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, l0.h[] hVarArr) {
        int iL = e1Var.l() - 1;
        if (e1Var.h().getLineStart(iL) != e1Var.h().getLineEnd(iL) || hVarArr == null || hVarArr.length == 0) {
            return null;
        }
        SpannableString spannableString = new SpannableString("\u200b");
        l0.h hVar = (l0.h) ArraysKt.V(hVarArr);
        spannableString.setSpan(hVar.b(0, spannableString.length(), (iL == 0 || !hVar.e()) ? hVar.e() : false), 0, spannableString.length(), 33);
        StaticLayout staticLayoutA = z0.f66552a.a(spannableString, textPaint, Integer.MAX_VALUE, (2072512 & 8) != 0 ? 0 : 0, (2072512 & 16) != 0 ? spannableString.length() : spannableString.length(), (2072512 & 32) != 0 ? d0.f66502a.b() : textDirectionHeuristic, (2072512 & 64) != 0 ? d0.f66502a.a() : null, (2072512 & 128) != 0 ? Integer.MAX_VALUE : 0, (2072512 & 256) != 0 ? null : null, (2072512 & 512) != 0 ? Integer.MAX_VALUE : 0, (2072512 & 1024) != 0 ? 1.0f : 0.0f, (2072512 & 2048) != 0 ? 0.0f : 0.0f, (2072512 & 4096) != 0 ? 0 : 0, (2072512 & 8192) != 0 ? false : e1Var.g(), (2072512 & 16384) != 0 ? true : e1Var.d(), (32768 & 2072512) != 0 ? 0 : 0, (65536 & 2072512) != 0 ? 0 : 0, (131072 & 2072512) != 0 ? 0 : 0, (262144 & 2072512) != 0 ? 0 : 0, (524288 & 2072512) != 0 ? null : null, (2072512 & 1048576) != 0 ? null : null);
        Paint.FontMetricsInt fontMetricsInt = new Paint.FontMetricsInt();
        fontMetricsInt.ascent = staticLayoutA.getLineAscent(0);
        fontMetricsInt.descent = staticLayoutA.getLineDescent(0);
        fontMetricsInt.top = staticLayoutA.getLineTop(0);
        fontMetricsInt.bottom = staticLayoutA.getLineBottom(0);
        return fontMetricsInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long i(l0.h[] hVarArr) {
        int iMax = 0;
        int iMax2 = 0;
        for (l0.h hVar : hVarArr) {
            if (hVar.c() < 0) {
                iMax = Math.max(iMax, Math.abs(hVar.c()));
            }
            if (hVar.d() < 0) {
                iMax2 = Math.max(iMax, Math.abs(hVar.d()));
            }
        }
        return (iMax == 0 && iMax2 == 0) ? f66536b : a(iMax, iMax2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l0.h[] j(e1 e1Var) {
        if (!(e1Var.C() instanceof Spanned)) {
            return null;
        }
        CharSequence charSequenceC = e1Var.C();
        Intrinsics.f(charSequenceC, "null cannot be cast to non-null type android.text.Spanned");
        if (!m0.a((Spanned) charSequenceC, l0.h.class) && e1Var.C().length() > 0) {
            return null;
        }
        CharSequence charSequenceC2 = e1Var.C();
        Intrinsics.f(charSequenceC2, "null cannot be cast to non-null type android.text.Spanned");
        return (l0.h[]) ((Spanned) charSequenceC2).getSpans(0, e1Var.C().length(), l0.h.class);
    }

    public static final TextDirectionHeuristic k(int i11) {
        if (i11 == 0) {
            return TextDirectionHeuristics.LTR;
        }
        if (i11 == 1) {
            return TextDirectionHeuristics.RTL;
        }
        if (i11 == 2) {
            return TextDirectionHeuristics.FIRSTSTRONG_LTR;
        }
        if (i11 == 3) {
            return TextDirectionHeuristics.FIRSTSTRONG_RTL;
        }
        if (i11 != 4) {
            return i11 != 5 ? TextDirectionHeuristics.FIRSTSTRONG_LTR : TextDirectionHeuristics.LOCALE;
        }
        return TextDirectionHeuristics.ANYRTL_LTR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long l(e1 e1Var) {
        if (e1Var.g() || e1Var.D()) {
            return f66536b;
        }
        TextPaint paint = e1Var.h().getPaint();
        CharSequence text = e1Var.h().getText();
        Rect rectC = l0.c(paint, text, e1Var.h().getLineStart(0), e1Var.h().getLineEnd(0));
        int lineAscent = e1Var.h().getLineAscent(0);
        int i11 = rectC.top;
        int topPadding = i11 < lineAscent ? lineAscent - i11 : e1Var.h().getTopPadding();
        if (e1Var.l() != 1) {
            int iL = e1Var.l() - 1;
            rectC = l0.c(paint, text, e1Var.h().getLineStart(iL), e1Var.h().getLineEnd(iL));
        }
        int lineDescent = e1Var.h().getLineDescent(e1Var.l() - 1);
        int i12 = rectC.bottom;
        int bottomPadding = i12 > lineDescent ? i12 - lineDescent : e1Var.h().getBottomPadding();
        return (topPadding == 0 && bottomPadding == 0) ? f66536b : a(topPadding, bottomPadding);
    }

    public static final boolean m(Layout layout, int i11) {
        return layout.getEllipsisCount(i11) > 0;
    }
}
