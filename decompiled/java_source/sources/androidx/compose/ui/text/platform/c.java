package androidx.compose.ui.text.platform;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.u;
import androidx.compose.ui.text.w;
import androidx.emoji2.text.EmojiCompat;
import java.util.List;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import o0.x;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f6320a = new a();

    public static final class a extends CharacterStyle {
        a() {
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13, types: [androidx.emoji2.text.EmojiCompat] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [int] */
    /* JADX WARN: Type inference failed for: r6v3 */
    public static final CharSequence a(String str, float f11, d0 d0Var, List list, List list2, o0.e eVar, Function4 function4, boolean z10) {
        CharSequence charSequenceS;
        u uVarA;
        if (z10 && EmojiCompat.i()) {
            w wVarW = d0Var.w();
            androidx.compose.ui.text.e eVarD = (wVarW == null || (uVarA = wVarW.a()) == null) ? null : androidx.compose.ui.text.e.d(uVarA.a());
            charSequenceS = EmojiCompat.c().s(str, 0, str.length(), Integer.MAX_VALUE, eVarD == null ? 0 : androidx.compose.ui.text.e.g(eVarD.j(), androidx.compose.ui.text.e.f6092b.a()));
            Intrinsics.e(charSequenceS);
        } else {
            charSequenceS = str;
        }
        if (list.isEmpty() && list2.isEmpty() && Intrinsics.c(d0Var.D(), androidx.compose.ui.text.style.n.f6429c.a()) && x.d(d0Var.s())) {
            return charSequenceS;
        }
        Spannable spannableString = charSequenceS instanceof Spannable ? (Spannable) charSequenceS : new SpannableString(charSequenceS);
        if (Intrinsics.c(d0Var.A(), androidx.compose.ui.text.style.i.f6409b.d())) {
            SpannableExtensions_androidKt.u(spannableString, f6320a, 0, str.length());
        }
        if (b(d0Var) && d0Var.t() == null) {
            SpannableExtensions_androidKt.r(spannableString, d0Var.s(), f11, eVar);
        } else {
            androidx.compose.ui.text.style.g gVarT = d0Var.t();
            if (gVarT == null) {
                gVarT = androidx.compose.ui.text.style.g.f6386c.a();
            }
            SpannableExtensions_androidKt.q(spannableString, d0Var.s(), f11, eVar, gVarT);
        }
        SpannableExtensions_androidKt.y(spannableString, d0Var.D(), f11, eVar);
        SpannableExtensions_androidKt.w(spannableString, d0Var, list, eVar, function4);
        androidx.compose.ui.text.platform.extensions.e.b(spannableString, list2, eVar);
        return spannableString;
    }

    public static final boolean b(d0 d0Var) {
        u uVarA;
        w wVarW = d0Var.w();
        if (wVarW == null || (uVarA = wVarW.a()) == null) {
            return false;
        }
        return uVarA.b();
    }
}
