package androidx.core.app;

import android.app.LocaleManager;
import android.content.Context;
import android.os.Build;
import android.os.LocaleList;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    static class a {
        static LocaleList a(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }
    }

    public static androidx.core.os.i a(Context context) {
        if (Build.VERSION.SDK_INT < 33) {
            return androidx.core.os.i.c(d.b(context));
        }
        Object objB = b(context);
        return objB != null ? androidx.core.os.i.j(a.a(objB)) : androidx.core.os.i.e();
    }

    private static Object b(Context context) {
        return context.getSystemService("locale");
    }
}
