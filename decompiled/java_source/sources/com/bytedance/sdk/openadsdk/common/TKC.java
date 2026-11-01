package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends aa {
    public TKC(@NonNull Context context) {
        super(context);
        this.sP = false;
    }

    @Override // com.bytedance.sdk.openadsdk.common.aa
    public void Sj() {
        post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.TKC.1
            @Override // java.lang.Runnable
            public void run() {
                TKC tkc = TKC.this;
                if (tkc.Sj != null) {
                    tkc.setVisibility(0);
                }
            }
        });
    }

    public void Sj(sU sUVar, String str, int i11, String str2, long j11, boolean z10, int i12, long j12) {
        if (getVisibility() != 8) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, i11, str2, SystemClock.elapsedRealtime() - j11, z10, i12, j12);
            super.sP();
        }
    }
}
