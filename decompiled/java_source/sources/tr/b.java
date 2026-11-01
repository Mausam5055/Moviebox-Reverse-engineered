package tr;

import android.content.Context;
import android.view.View;
import com.therouter.TheRouter;
import com.transsion.shorttv.bean.Subject;
import com.transsion.web.api.WebConstants;
import hj.i;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {
    public static final void a(View view) {
        Intrinsics.h(view, "<this>");
        view.setPadding(view.getPaddingStart(), yr.a.a(36), view.getPaddingEnd(), view.getPaddingBottom());
    }

    public static final int b(Context context) {
        Intrinsics.h(context, "context");
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier <= 0) {
            identifier = yr.a.a(24);
        }
        return context.getResources().getDimensionPixelSize(identifier);
    }

    public static final void c(Subject subject) {
        if (subject == null) {
            return;
        }
        ds.c.k(TheRouter.c(ls.a.f69034a.b()).K("id", subject.getSubjectId()).F("ep", 1).K("ops", subject.getOps()));
    }

    public static final void d(String pageName, String moduleName, String str, String str2, String str3, String str4) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        if (str != null) {
            map.put("group_id", str);
        }
        if (str2 != null) {
            map.put("subject_id", str2);
        }
        if (str3 != null) {
            map.put("post_id", str3);
        }
        if (str4 != null) {
            map.put("ops", str4);
        }
        i.f64505a.p(pageName, map);
    }

    public static /* synthetic */ void e(String str, String str2, String str3, String str4, String str5, String str6, int i11, Object obj) {
        String str7 = (i11 & 4) != 0 ? "" : str3;
        String str8 = (i11 & 8) != 0 ? "" : str4;
        String str9 = (i11 & 16) != 0 ? "" : str5;
        if ((i11 & 32) != 0) {
            str6 = null;
        }
        d(str, str2, str7, str8, str9, str6);
    }

    public static final void f(String pageName, String pageFrom, String duration) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(pageFrom, "pageFrom");
        Intrinsics.h(duration, "duration");
        HashMap map = new HashMap();
        map.put(WebConstants.PAGE_FROM, pageFrom);
        map.put("duration", duration);
        i.f64505a.s(pageName, "pt", map);
    }
}
