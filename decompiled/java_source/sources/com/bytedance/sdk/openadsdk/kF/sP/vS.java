package com.bytedance.sdk.openadsdk.kF.sP;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.LD;

/* JADX INFO: loaded from: classes3.dex */
public class vS {
    public static boolean Sj(View view, int i11) {
        return Sj(view, false, i11);
    }

    public static boolean Sj(View view, boolean z10, int i11) {
        if (view == null) {
            return false;
        }
        return LD.Sj(view, z10 ? 30 : 50, i11);
    }
}
