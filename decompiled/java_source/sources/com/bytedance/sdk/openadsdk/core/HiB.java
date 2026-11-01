package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class HiB extends vS {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile HiB Sj;

    private HiB(Context context) {
        super(context);
    }

    public static HiB Sj(Context context) {
        if (Sj == null) {
            synchronized (HiB.class) {
                try {
                    if (Sj == null) {
                        Sj = new HiB(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    @Override // com.bytedance.sdk.openadsdk.core.vS
    public /* bridge */ /* synthetic */ vS.TKC Sj() {
        return super.Sj();
    }
}
