package com.transsion.usercenter.me;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u f57015a = new u();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f57016b;

    private u() {
    }

    public final void a(String moduleName) {
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        String str = f57016b;
        if (str == null) {
            str = "";
        }
        map.put("user_id", str);
        map.put("user_status", "me");
        map.put("module_name", moduleName);
        hj.i.f64505a.D("profiledetail", map);
    }

    public final void b(String moduleName) {
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        String str = f57016b;
        if (str == null) {
            str = "";
        }
        map.put("user_id", str);
        map.put("user_status", "me");
        map.put("module_name", moduleName);
        hj.i.f64505a.p("profiledetail", map);
    }

    public final void c(String moduleName, int i11) {
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        String str = f57016b;
        if (str == null) {
            str = "";
        }
        map.put("user_id", str);
        map.put("user_status", "me");
        map.put("module_name", moduleName);
        map.put(RequestParameters.POSITION, String.valueOf(i11));
        hj.i.f64505a.p("profiledetail", map);
    }

    public final void d(String str) {
        f57016b = str;
    }
}
