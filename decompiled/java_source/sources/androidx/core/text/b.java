package androidx.core.text;

import android.os.Build;
import android.text.Html;
import android.text.Spanned;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    static class a {
        static Spanned a(String str, int i11) {
            return Html.fromHtml(str, i11);
        }
    }

    public static Spanned a(String str, int i11) {
        return Build.VERSION.SDK_INT >= 24 ? a.a(str, i11) : Html.fromHtml(str);
    }
}
