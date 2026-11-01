package com.transsion.postdetail.shorttv;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f49224a = new k();

    private k() {
    }

    public static /* synthetic */ void b(k kVar, String str, String str2, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            str5 = "minitv_play";
        }
        kVar.a(str, str2, str3, str4, str5);
    }

    public static /* synthetic */ void d(k kVar, String str, String str2, String str3, boolean z10, String str4, String str5, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            str4 = "minitv_play";
        }
        String str6 = str4;
        if ((i11 & 32) != 0) {
            str5 = null;
        }
        kVar.c(str, str2, str3, z10, str6, str5);
    }

    public final void a(String str, String str2, String optType, String position, String pageName) {
        Intrinsics.h(optType, "optType");
        Intrinsics.h(position, "position");
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("module_name", "watch_ad");
        if (str == null) {
            str = "";
        }
        map.put("subject_id", str);
        if (str2 == null) {
            str2 = "";
        }
        map.put("ops", str2);
        map.put("opt_type", optType);
        map.put(RequestParameters.POSITION, position);
        hj.i.f64505a.p(pageName, map);
    }

    public final void c(String str, String str2, String optType, boolean z10, String pageName, String str3) {
        Intrinsics.h(optType, "optType");
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("module_name", "favorite");
        if (str != null && str.length() != 0) {
            map.put("subject_id", str);
        }
        if (str2 != null && str2.length() != 0) {
            map.put("ops", str2);
        }
        map.put("opt_type", optType);
        map.put("favorite", String.valueOf(!z10));
        if (str3 != null && str3.length() != 0) {
            map.put(WebConstants.PAGE_FROM, str3);
        }
        hj.i.f64505a.p(pageName, map);
    }
}
