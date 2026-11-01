package com.transsion.shorttv_pugc.utils;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.shorttv_pugc.bean.Subject;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {
    public static /* synthetic */ void b(b bVar, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str4 = "minitv_download";
        }
        bVar.a(str, str2, str3, str4);
    }

    public static /* synthetic */ void d(b bVar, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str3 = "minitv_download";
        }
        bVar.c(str, str2, str3);
    }

    public static /* synthetic */ void g(b bVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "minitv_download";
        }
        bVar.f(str, str2);
    }

    public static /* synthetic */ void i(b bVar, Subject subject, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str3 = "minitv_download";
        }
        bVar.h(subject, str, str2, str3);
    }

    public final void a(String str, String optType, String position, String pageName) {
        Intrinsics.h(optType, "optType");
        Intrinsics.h(position, "position");
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("module_name", "watch_ad");
        if (str == null) {
            str = "";
        }
        map.put("subject_id", str);
        map.put("opt_type", optType);
        map.put(RequestParameters.POSITION, position);
        hj.i.f64505a.p(pageName, map);
    }

    public final void c(String str, String dialogName, String pageName) {
        Intrinsics.h(dialogName, "dialogName");
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        if (str == null) {
            str = "";
        }
        map.put("subject_id", str);
        map.put("dialog_name", dialogName);
        hj.i.f64505a.s(pageName, "dialog_show", map);
    }

    public final void e(String str, String optType, boolean z10, String pageName) {
        Intrinsics.h(optType, "optType");
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("module_name", "favorite");
        if (str == null) {
            str = "";
        }
        map.put("subject_id", str);
        map.put("opt_type", optType);
        map.put("favorite", String.valueOf(!z10));
        hj.i.f64505a.p(pageName, map);
    }

    public final void f(String str, String pageName) {
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("module_name", "share");
        if (str == null) {
            str = "";
        }
        map.put("subject_id", str);
        hj.i.f64505a.p(pageName, map);
    }

    public final void h(Subject subject, String unlockType, String unlockEp, String pageName) {
        String subjectId;
        String ops;
        Intrinsics.h(unlockType, "unlockType");
        Intrinsics.h(unlockEp, "unlockEp");
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("unlock_ep", unlockEp);
        map.put("unlock_type", unlockType);
        if (subject != null && (ops = subject.getOps()) != null && ops.length() > 0) {
            String ops2 = subject.getOps();
            map.put("ops", ops2 != null ? ops2 : "");
        }
        hj.i.f64505a.s(pageName, "minitv_unlock", map);
    }
}
