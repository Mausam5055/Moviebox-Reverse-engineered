package com.bytedance.sdk.openadsdk.multipro;

import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    public static Boolean Sj;

    public static void Sj() {
        Boolean bool = Boolean.TRUE;
        Sj = bool;
        com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_info", "is_support_multi_process", bool);
    }

    public static boolean TKC() {
        Boolean bool = Sj;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (!sef.HiB()) {
            return false;
        }
        if (Sj == null) {
            Sj = Boolean.valueOf(com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_info", "is_support_multi_process", false));
        }
        return Sj.booleanValue();
    }

    public static void sP() {
        Sj = Boolean.FALSE;
        BinderPoolService.Sj = true;
    }
}
