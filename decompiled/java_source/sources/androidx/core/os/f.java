package androidx.core.os;

import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    static class a {
        static LocaleList a(Configuration configuration) {
            return configuration.getLocales();
        }

        static void b(Configuration configuration, i iVar) {
            configuration.setLocales((LocaleList) iVar.i());
        }
    }

    public static i a(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? i.j(a.a(configuration)) : i.a(configuration.locale);
    }

    public static void b(Configuration configuration, i iVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            a.b(configuration, iVar);
        } else {
            if (iVar.f()) {
                return;
            }
            configuration.setLocale(iVar.d(0));
        }
    }
}
