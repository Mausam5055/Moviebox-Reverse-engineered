package ia;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import java.util.ArrayDeque;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
abstract class f {
    public static void a(Spannable spannable, int i11, int i12, g gVar, d dVar, Map map, int i13) {
        d dVarE;
        g gVarF;
        int i14;
        if (gVar.l() != -1) {
            spannable.setSpan(new StyleSpan(gVar.l()), i11, i12, 33);
        }
        if (gVar.s()) {
            spannable.setSpan(new StrikethroughSpan(), i11, i12, 33);
        }
        if (gVar.t()) {
            spannable.setSpan(new UnderlineSpan(), i11, i12, 33);
        }
        if (gVar.q()) {
            fa.d.a(spannable, new ForegroundColorSpan(gVar.c()), i11, i12, 33);
        }
        if (gVar.p()) {
            fa.d.a(spannable, new BackgroundColorSpan(gVar.b()), i11, i12, 33);
        }
        if (gVar.d() != null) {
            fa.d.a(spannable, new TypefaceSpan(gVar.d()), i11, i12, 33);
        }
        if (gVar.o() != null) {
            b bVar = (b) com.google.android.exoplayer2.util.a.e(gVar.o());
            int i15 = bVar.f65084a;
            if (i15 == -1) {
                i15 = (i13 == 2 || i13 == 1) ? 3 : 1;
                i14 = 1;
            } else {
                i14 = bVar.f65085b;
            }
            int i16 = bVar.f65086c;
            if (i16 == -2) {
                i16 = 1;
            }
            fa.d.a(spannable, new fa.e(i15, i14, i16), i11, i12, 33);
        }
        int iJ = gVar.j();
        if (iJ == 2) {
            d dVarD = d(dVar, map);
            if (dVarD != null && (dVarE = e(dVarD, map)) != null) {
                if (dVarE.g() != 1 || dVarE.f(0).f65105b == null) {
                    s.f("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                } else {
                    String str = (String) p0.j(dVarE.f(0).f65105b);
                    g gVarF2 = f(dVarE.f65109f, dVarE.l(), map);
                    int i17 = gVarF2 != null ? gVarF2.i() : -1;
                    if (i17 == -1 && (gVarF = f(dVarD.f65109f, dVarD.l(), map)) != null) {
                        i17 = gVarF.i();
                    }
                    spannable.setSpan(new fa.c(str, i17), i11, i12, 33);
                }
            }
        } else if (iJ == 3 || iJ == 4) {
            spannable.setSpan(new a(), i11, i12, 33);
        }
        if (gVar.n()) {
            fa.d.a(spannable, new fa.a(), i11, i12, 33);
        }
        int iF = gVar.f();
        if (iF == 1) {
            fa.d.a(spannable, new AbsoluteSizeSpan((int) gVar.e(), true), i11, i12, 33);
        } else if (iF == 2) {
            fa.d.a(spannable, new RelativeSizeSpan(gVar.e()), i11, i12, 33);
        } else {
            if (iF != 3) {
                return;
            }
            fa.d.a(spannable, new RelativeSizeSpan(gVar.e() / 100.0f), i11, i12, 33);
        }
    }

    static String b(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    static void c(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length < 0 || spannableStringBuilder.charAt(length) == '\n') {
            return;
        }
        spannableStringBuilder.append('\n');
    }

    private static d d(d dVar, Map map) {
        while (dVar != null) {
            g gVarF = f(dVar.f65109f, dVar.l(), map);
            if (gVarF != null && gVarF.j() == 1) {
                return dVar;
            }
            dVar = dVar.f65113j;
        }
        return null;
    }

    private static d e(d dVar, Map map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(dVar);
        while (!arrayDeque.isEmpty()) {
            d dVar2 = (d) arrayDeque.pop();
            g gVarF = f(dVar2.f65109f, dVar2.l(), map);
            if (gVarF != null && gVarF.j() == 3) {
                return dVar2;
            }
            for (int iG = dVar2.g() - 1; iG >= 0; iG--) {
                arrayDeque.push(dVar2.f(iG));
            }
        }
        return null;
    }

    public static g f(g gVar, String[] strArr, Map map) {
        int i11 = 0;
        if (gVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return (g) map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                g gVar2 = new g();
                int length = strArr.length;
                while (i11 < length) {
                    gVar2.a((g) map.get(strArr[i11]));
                    i11++;
                }
                return gVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                return gVar.a((g) map.get(strArr[0]));
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i11 < length2) {
                    gVar.a((g) map.get(strArr[i11]));
                    i11++;
                }
            }
        }
        return gVar;
    }
}
