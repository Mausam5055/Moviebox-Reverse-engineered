package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.os.Build;
import android.text.SpannableString;
import android.text.style.ScaleXSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.f0;
import androidx.compose.ui.text.font.s;
import androidx.compose.ui.text.g0;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.x;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    private static final void a(SpannableString spannableString, x xVar, int i11, int i12, o0.e eVar, androidx.compose.ui.text.font.h.b bVar) {
        SpannableExtensions_androidKt.k(spannableString, xVar.g(), i11, i12);
        SpannableExtensions_androidKt.o(spannableString, xVar.k(), eVar, i11, i12);
        if (xVar.n() != null || xVar.l() != null) {
            androidx.compose.ui.text.font.p pVarN = xVar.n();
            if (pVarN == null) {
                pVarN = androidx.compose.ui.text.font.p.f6149b.a();
            }
            androidx.compose.ui.text.font.n nVarL = xVar.l();
            spannableString.setSpan(new StyleSpan(androidx.compose.ui.text.font.d.c(pVarN, nVarL != null ? nVarL.i() : androidx.compose.ui.text.font.n.f6139b.b())), i11, i12, 33);
        }
        if (xVar.i() != null) {
            if (xVar.i() instanceof s) {
                spannableString.setSpan(new TypefaceSpan(((s) xVar.i()).c()), i11, i12, 33);
            } else if (Build.VERSION.SDK_INT >= 28) {
                androidx.compose.ui.text.font.h hVarI = xVar.i();
                androidx.compose.ui.text.font.o oVarM = xVar.m();
                Object value = androidx.compose.ui.text.font.i.a(bVar, hVarI, null, 0, oVarM != null ? oVarM.k() : androidx.compose.ui.text.font.o.f6143b.a(), 6, null).getValue();
                Intrinsics.f(value, "null cannot be cast to non-null type android.graphics.Typeface");
                spannableString.setSpan(g.f6322a.a((Typeface) value), i11, i12, 33);
            }
        }
        if (xVar.s() != null) {
            androidx.compose.ui.text.style.i iVarS = xVar.s();
            androidx.compose.ui.text.style.i.a aVar = androidx.compose.ui.text.style.i.f6409b;
            if (iVarS.d(aVar.d())) {
                spannableString.setSpan(new UnderlineSpan(), i11, i12, 33);
            }
            if (xVar.s().d(aVar.b())) {
                spannableString.setSpan(new StrikethroughSpan(), i11, i12, 33);
            }
        }
        if (xVar.u() != null) {
            spannableString.setSpan(new ScaleXSpan(xVar.u().b()), i11, i12, 33);
        }
        SpannableExtensions_androidKt.s(spannableString, xVar.p(), i11, i12);
        SpannableExtensions_androidKt.h(spannableString, xVar.d(), i11, i12);
    }

    public static final SpannableString b(AnnotatedString annotatedString, o0.e eVar, androidx.compose.ui.text.font.h.b bVar, r rVar) {
        SpannableString spannableString = new SpannableString(annotatedString.i());
        List listH = annotatedString.h();
        if (listH != null) {
            int size = listH.size();
            for (int i11 = 0; i11 < size; i11++) {
                AnnotatedString.c cVar = (AnnotatedString.c) listH.get(i11);
                x xVar = (x) cVar.a();
                a(spannableString, xVar.a((65503 & 1) != 0 ? xVar.g() : 0L, (65503 & 2) != 0 ? xVar.f6455b : 0L, (65503 & 4) != 0 ? xVar.f6456c : null, (65503 & 8) != 0 ? xVar.f6457d : null, (65503 & 16) != 0 ? xVar.f6458e : null, (65503 & 32) != 0 ? xVar.f6459f : null, (65503 & 64) != 0 ? xVar.f6460g : null, (65503 & 128) != 0 ? xVar.f6461h : 0L, (65503 & 256) != 0 ? xVar.f6462i : null, (65503 & 512) != 0 ? xVar.f6463j : null, (65503 & 1024) != 0 ? xVar.f6464k : null, (65503 & 2048) != 0 ? xVar.f6465l : 0L, (65503 & 4096) != 0 ? xVar.f6466m : null, (65503 & 8192) != 0 ? xVar.f6467n : null, (65503 & 16384) != 0 ? xVar.f6468o : null, (65503 & 32768) != 0 ? xVar.f6469p : null), cVar.b(), cVar.c(), eVar, bVar);
            }
        }
        List listJ = annotatedString.j(0, annotatedString.length());
        int size2 = listJ.size();
        for (int i12 = 0; i12 < size2; i12++) {
            AnnotatedString.c cVar2 = (AnnotatedString.c) listJ.get(i12);
            spannableString.setSpan(androidx.compose.ui.text.platform.extensions.g.a((f0) cVar2.a()), cVar2.b(), cVar2.c(), 33);
        }
        List listK = annotatedString.k(0, annotatedString.length());
        int size3 = listK.size();
        for (int i13 = 0; i13 < size3; i13++) {
            AnnotatedString.c cVar3 = (AnnotatedString.c) listK.get(i13);
            spannableString.setSpan(rVar.c((g0) cVar3.a()), cVar3.b(), cVar3.c(), 33);
        }
        List listD = annotatedString.d(0, annotatedString.length());
        int size4 = listD.size();
        for (int i14 = 0; i14 < size4; i14++) {
            AnnotatedString.c cVar4 = (AnnotatedString.c) listD.get(i14);
            if (cVar4.f() != cVar4.d()) {
                androidx.compose.ui.text.f fVar = (androidx.compose.ui.text.f) cVar4.e();
                if (fVar instanceof androidx.compose.ui.text.f.b) {
                    fVar.a();
                    spannableString.setSpan(rVar.b(c(cVar4)), cVar4.f(), cVar4.d(), 33);
                } else {
                    spannableString.setSpan(rVar.a(cVar4), cVar4.f(), cVar4.d(), 33);
                }
            }
        }
        return spannableString;
    }

    private static final AnnotatedString.c c(AnnotatedString.c cVar) {
        Object objE = cVar.e();
        Intrinsics.f(objE, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Url");
        return new AnnotatedString.c((androidx.compose.ui.text.f.b) objE, cVar.f(), cVar.d());
    }
}
