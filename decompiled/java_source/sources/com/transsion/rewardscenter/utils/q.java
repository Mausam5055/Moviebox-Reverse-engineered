package com.transsion.rewardscenter.utils;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class q {
    public static final void a(String module, Map map) {
        Intrinsics.h(module, "module");
        HashMap map2 = new HashMap();
        map2.put("module_name", module);
        if (map != null) {
            map2.putAll(map);
        }
        hj.i.f64505a.p("rewards_center", map2);
    }

    public static final void b(String module, Map map) {
        Intrinsics.h(module, "module");
        HashMap map2 = new HashMap();
        map2.put("module_name", module);
        if (map != null) {
            map2.putAll(map);
        }
        hj.i.f64505a.D("rewards_center", map2);
    }

    public static /* synthetic */ void c(String str, Map map, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            map = null;
        }
        b(str, map);
    }
}
