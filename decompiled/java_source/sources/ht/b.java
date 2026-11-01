package ht;

import android.net.Uri;
import com.therouter.TheRouter;
import com.transsion.web.api.WebPageIdentity;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {
    public static final int a(List list, Object obj) {
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

    public static final boolean b(Uri uri) {
        Intrinsics.h(uri, "<this>");
        return Intrinsics.c(uri.getScheme(), "https") || Intrinsics.c(uri.getScheme(), "http");
    }

    public static final void c(String str, String extraParam) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(extraParam, "extraParam");
        Uri uri = Uri.parse(str + extraParam);
        Intrinsics.e(uri);
        if (b(uri)) {
            ds.c.k(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", str));
            return;
        }
        try {
            Uri uriA = dt.a.f61432a.a(uri);
            if (uriA != null) {
                ds.c.j(uriA);
            }
        } catch (Throwable th2) {
            lg.a.C0828a.l(lg.a.f68839a, "Deeplink", "openDeeplink:" + th2, false, 4, null);
            th2.printStackTrace();
        }
    }

    public static /* synthetic */ void d(String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str2 = "";
        }
        c(str, str2);
    }
}
