package androidx.compose.ui.text.font;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public abstract class b0 {
    public static final x a() {
        return Build.VERSION.SDK_INT >= 28 ? new z() : new a0();
    }

    public static final String b(String str, p pVar) {
        int iH = pVar.h() / 100;
        if (iH >= 0 && iH < 2) {
            return str + "-thin";
        }
        if (2 <= iH && iH < 4) {
            return str + "-light";
        }
        if (iH == 4) {
            return str;
        }
        if (iH == 5) {
            return str + "-medium";
        }
        if ((6 <= iH && iH < 8) || 8 > iH || iH >= 11) {
            return str;
        }
        return str + "-black";
    }
}
