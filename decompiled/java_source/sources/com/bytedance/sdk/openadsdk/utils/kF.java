package com.bytedance.sdk.openadsdk.utils;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public class kF {
    public static boolean Sj = Sj();

    public static void Sj(int i11) {
        try {
            SharedPreferences.Editor editorEdit = com.bytedance.sdk.openadsdk.core.dNu.Sj().getSharedPreferences("pag_sp_prop_switch", 0).edit();
            editorEdit.putInt("perf_con_use_prop", i11);
            editorEdit.apply();
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP(th2.getMessage(), new Object[0]);
        }
    }

    private static boolean Sj() {
        SharedPreferences sharedPreferences;
        try {
            return com.bytedance.sdk.openadsdk.core.dNu.Sj() == null || (sharedPreferences = com.bytedance.sdk.openadsdk.core.dNu.Sj().getSharedPreferences("pag_sp_prop_switch", 0)) == null || sharedPreferences.getInt("perf_con_use_prop", 1) == 1;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP(th2.getMessage(), new Object[0]);
        }
        return true;
    }
}
