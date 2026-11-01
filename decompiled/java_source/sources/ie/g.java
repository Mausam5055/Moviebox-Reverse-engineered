package ie;

import android.text.TextUtils;
import com.iab.omid.library.hisavana.adsession.CreativeType;
import com.iab.omid.library.hisavana.adsession.ImpressionType;
import com.iab.omid.library.hisavana.adsession.Owner;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g {
    public static void a() {
        if (!fe.a.c()) {
            throw new IllegalStateException("Method called before OM SDK activation");
        }
    }

    public static void b(Owner owner, CreativeType creativeType, ImpressionType impressionType) {
        if (owner == Owner.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        }
        if (creativeType == CreativeType.DEFINED_BY_JAVASCRIPT && owner == Owner.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        if (impressionType == ImpressionType.DEFINED_BY_JAVASCRIPT && owner == Owner.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
    }

    public static void c(com.iab.omid.library.hisavana.adsession.h hVar) {
        h(hVar);
        g(hVar);
    }

    public static void d(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void e(String str, int i11, String str2) {
        if (str.length() > i11) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void f(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void g(com.iab.omid.library.hisavana.adsession.h hVar) {
        if (hVar.q()) {
            throw new IllegalStateException("AdSession is finished");
        }
    }

    private static void h(com.iab.omid.library.hisavana.adsession.h hVar) {
        if (!hVar.s()) {
            throw new IllegalStateException("AdSession is not started");
        }
    }

    public static void i(com.iab.omid.library.hisavana.adsession.h hVar) {
        if (!hVar.r()) {
            throw new IllegalStateException("Impression event is not expected from the Native AdSession");
        }
    }

    public static void j(com.iab.omid.library.hisavana.adsession.h hVar) {
        if (hVar.l().o() != null) {
            throw new IllegalStateException("AdEvents already exists for AdSession");
        }
    }
}
