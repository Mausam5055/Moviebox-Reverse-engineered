package ds;

import android.app.Activity;
import android.net.Uri;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.web.api.WebPageIdentity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c {
    private static final void b(Uri uri, Function2 function2) {
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        Intrinsics.g(queryParameterNames, "getQueryParameterNames(...)");
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : queryParameterNames) {
            if (!Intrinsics.c((String) obj, NativeComponentConstants.KEY_COMPONENT_TYPE)) {
                arrayList.add(obj);
            }
        }
        for (String str : arrayList) {
            String queryParameter = uri.getQueryParameter(str);
            if (queryParameter != null) {
                Intrinsics.e(str);
                function2.invoke(str, queryParameter);
            }
        }
    }

    public static final int c(List list, Object obj) {
        Intrinsics.h(list, "<this>");
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            int i12 = i11 + 1;
            if (it.next() == obj) {
                return i11;
            }
            i11 = i12;
        }
        return -1;
    }

    public static final boolean d(Uri uri) {
        Intrinsics.h(uri, "<this>");
        return Intrinsics.c(uri.getScheme(), "https") || Intrinsics.c(uri.getScheme(), "http");
    }

    public static final void e(String str, String extraParam) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(extraParam, "extraParam");
        Uri uri = Uri.parse(str + extraParam);
        Intrinsics.e(uri);
        if (d(uri)) {
            k(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", str));
            return;
        }
        try {
            Uri uriA = zr.a.f79450a.a(uri);
            if (uriA != null) {
                j(uriA);
            }
        } catch (Throwable th2) {
            lg.a.C0828a.l(lg.a.f68839a, "Deeplink", "openDeeplink:" + th2, false, 4, null);
            th2.printStackTrace();
        }
    }

    public static /* synthetic */ void f(String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str2 = "";
        }
        e(str, str2);
    }

    private static final String g(Uri uri) {
        String queryParameter = uri.getQueryParameter(NativeComponentConstants.KEY_COMPONENT_TYPE);
        if (queryParameter != null) {
            return queryParameter;
        }
        String path = uri.getPath();
        return path == null ? "" : path;
    }

    public static final Navigator h(Uri uri) {
        Intrinsics.h(uri, "<this>");
        final Navigator navigatorC = TheRouter.c(g(uri));
        b(uri, new Function2() { // from class: ds.b
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return c.i(navigatorC, (String) obj, (String) obj2);
            }
        });
        return navigatorC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(Navigator navigator, String key, String value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        navigator.K(key, value);
        return Unit.f67061a;
    }

    public static final void j(Uri uri) {
        Intrinsics.h(uri, "<this>");
        k(h(uri));
    }

    public static final void k(Navigator navigator) {
        Object next;
        String localClassName;
        Intrinsics.h(navigator, "<this>");
        try {
            Iterator it = vr.b.f77441a.e().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    localClassName = ((Activity) next).getLocalClassName();
                    Intrinsics.g(localClassName, "getLocalClassName(...)");
                }
            } while (!StringsKt.c0(localClassName, "MainActivity", false, 2, null));
            Activity activityG = (Activity) next;
            if (activityG == null) {
                activityG = vr.b.f77441a.g();
            }
            Navigator.x(navigator, activityG, null, 2, null);
        } catch (Throwable unused) {
            Navigator.x(navigator, null, null, 3, null);
        }
    }
}
