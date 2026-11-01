package com.transsion.shorttv.utils;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {
    public static /* synthetic */ void b(b bVar, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str3 = "minitv_download";
        }
        bVar.a(str, str2, str3);
    }

    public static /* synthetic */ void e(b bVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "minitv_download";
        }
        bVar.d(str, str2);
    }

    public final void a(String str, String dialogName, String pageName) {
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

    public final void c(String str, String optType, boolean z10, String pageName) {
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

    public final void d(String str, String pageName) {
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("module_name", "share");
        if (str == null) {
            str = "";
        }
        map.put("subject_id", str);
        hj.i.f64505a.p(pageName, map);
    }
}
