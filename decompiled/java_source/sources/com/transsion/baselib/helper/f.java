package com.transsion.baselib.helper;

import android.text.TextUtils;
import com.therouter.TheRouter;
import com.transsion.base.report.athena.ClickType;
import com.transsion.memberapi.IPremiumApi;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f43269a = new f();

    private f() {
    }

    public static /* synthetic */ void b(f fVar, String str, String str2, String str3, String str4, String str5, String str6, int i11, Object obj) {
        if ((i11 & 32) != 0) {
            str6 = null;
        }
        fVar.a(str, str2, str3, str4, str5, str6);
    }

    public static /* synthetic */ void e(f fVar, String str, String str2, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            str5 = null;
        }
        fVar.d(str, str2, str3, str4, str5);
    }

    public static /* synthetic */ void g(f fVar, String str, String str2, String str3, String str4, int i11, int i12, Object obj) {
        if ((i12 & 8) != 0) {
            str4 = null;
        }
        fVar.f(str, str2, str3, str4, i11);
    }

    public static /* synthetic */ void i(f fVar, String str, String str2, String str3, String str4, int i11, int i12, Object obj) {
        if ((i12 & 8) != 0) {
            str4 = null;
        }
        fVar.h(str, str2, str3, str4, i11);
    }

    public final void a(String pageName, String str, String orderId, String traceId, String skuId, String str2) {
        String strM;
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(orderId, "orderId");
        Intrinsics.h(traceId, "traceId");
        Intrinsics.h(skuId, "skuId");
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            Intrinsics.e(str);
            map.put("scene_id", str);
        }
        map.put("order_id", orderId);
        if (str2 == null) {
            str2 = "";
        }
        map.put("module_name", str2);
        map.put("trace_id", traceId);
        map.put("sku_id", skuId);
        map.put("opt_type", "order_submit");
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi == null || (strM = iPremiumApi.m()) == null) {
            strM = "non-vip";
        }
        map.put("membership_status", strM);
        hj.i.f64505a.F(pageName, "vip_buy_click", map);
    }

    public final void c(String pageName, String dialogName) {
        String strM;
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(dialogName, "dialogName");
        HashMap map = new HashMap();
        map.put("dialog_name", dialogName);
        map.put("module_name", "confirm");
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi == null || (strM = iPremiumApi.m()) == null) {
            strM = "non-vip";
        }
        map.put("membership_status", strM);
        hj.i.f64505a.q(pageName, map, ClickType.FEATURE);
    }

    public final void d(String pageName, String sceneId, String traceId, String moduleName, String str) {
        String strM;
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(traceId, "traceId");
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("scene_id", sceneId);
        map.put("trace_id", traceId);
        map.put("module_name", moduleName);
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi == null || (strM = iPremiumApi.m()) == null) {
            strM = "non-vip";
        }
        map.put("membership_status", strM);
        if (str != null && str.length() != 0) {
            map.put("subject_id", str);
        }
        hj.i.f64505a.F(pageName, "vip_sku_show", map);
    }

    public final void f(String pageName, String sceneId, String traceId, String str, int i11) {
        String strM;
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(traceId, "traceId");
        HashMap map = new HashMap();
        map.put("scene_id", sceneId);
        map.put("trace_id", traceId);
        if (str != null && str.length() != 0) {
            map.put("subject_id", str);
        }
        map.put("remind_type", String.valueOf(i11));
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi == null || (strM = iPremiumApi.m()) == null) {
            strM = "non-vip";
        }
        map.put("membership_status", strM);
        hj.i.f64505a.F(pageName, "vip_entry_click", map);
    }

    public final void h(String pageName, String sceneId, String traceId, String str, int i11) {
        String strM;
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(traceId, "traceId");
        HashMap map = new HashMap();
        map.put("scene_id", sceneId);
        map.put("trace_id", traceId);
        if (str != null && str.length() != 0) {
            map.put("subject_id", str);
        }
        map.put("remind_type", String.valueOf(i11));
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi == null || (strM = iPremiumApi.m()) == null) {
            strM = "non-vip";
        }
        map.put("membership_status", strM);
        hj.i.f64505a.F(pageName, "vip_entry_show", map);
    }
}
