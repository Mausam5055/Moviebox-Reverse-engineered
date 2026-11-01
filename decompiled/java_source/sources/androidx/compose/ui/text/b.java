package androidx.compose.ui.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import k0.e1;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence i(CharSequence charSequence) {
        if (charSequence.length() == 0) {
            return charSequence;
        }
        Spannable spannableString = charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence);
        SpannableExtensions_androidKt.u(spannableString, new l0.c(), spannableString.length() - 1, spannableString.length() - 1);
        return spannableString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int j(e1 e1Var, int i11) {
        int iL = e1Var.l();
        for (int i12 = 0; i12 < iL; i12++) {
            if (e1Var.k(i12) > i11) {
                return i12;
            }
        }
        return e1Var.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean k(d0 d0Var, boolean z10) {
        if (!z10 || o0.w.e(d0Var.q(), o0.x.c(0)) || o0.w.e(d0Var.q(), o0.w.f70628b.a())) {
            return false;
        }
        int iZ = d0Var.z();
        androidx.compose.ui.text.style.h.a aVar = androidx.compose.ui.text.style.h.f6400b;
        return (androidx.compose.ui.text.style.h.k(iZ, aVar.g()) || androidx.compose.ui.text.style.h.k(d0Var.z(), aVar.f()) || androidx.compose.ui.text.style.h.k(d0Var.z(), aVar.c())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int l(int i11) {
        androidx.compose.ui.text.style.h.a aVar = androidx.compose.ui.text.style.h.f6400b;
        if (androidx.compose.ui.text.style.h.k(i11, aVar.d())) {
            return 3;
        }
        if (androidx.compose.ui.text.style.h.k(i11, aVar.e())) {
            return 4;
        }
        if (androidx.compose.ui.text.style.h.k(i11, aVar.a())) {
            return 2;
        }
        return (!androidx.compose.ui.text.style.h.k(i11, aVar.f()) && androidx.compose.ui.text.style.h.k(i11, aVar.b())) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int m(int i11) {
        androidx.compose.ui.text.style.e.b.a aVar = androidx.compose.ui.text.style.e.b.f6371a;
        if (androidx.compose.ui.text.style.e.b.e(i11, aVar.c())) {
            return 0;
        }
        if (androidx.compose.ui.text.style.e.b.e(i11, aVar.b())) {
            return 1;
        }
        return androidx.compose.ui.text.style.e.b.e(i11, aVar.a()) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int n(int i11) {
        androidx.compose.ui.text.style.d.a aVar = androidx.compose.ui.text.style.d.f6362a;
        if (androidx.compose.ui.text.style.d.e(i11, aVar.a())) {
            return Build.VERSION.SDK_INT <= 32 ? 2 : 4;
        }
        androidx.compose.ui.text.style.d.e(i11, aVar.b());
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int o(int i11) {
        androidx.compose.ui.text.style.e.c.a aVar = androidx.compose.ui.text.style.e.c.f6376a;
        if (androidx.compose.ui.text.style.e.c.f(i11, aVar.a())) {
            return 0;
        }
        if (androidx.compose.ui.text.style.e.c.f(i11, aVar.b())) {
            return 1;
        }
        if (androidx.compose.ui.text.style.e.c.f(i11, aVar.c())) {
            return 2;
        }
        return androidx.compose.ui.text.style.e.c.f(i11, aVar.d()) ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int p(int i11) {
        androidx.compose.ui.text.style.e.d.a aVar = androidx.compose.ui.text.style.e.d.f6382a;
        return (!androidx.compose.ui.text.style.e.d.d(i11, aVar.a()) && androidx.compose.ui.text.style.e.d.d(i11, aVar.b())) ? 1 : 0;
    }
}
