package com.bytedance.sdk.openadsdk.TKC;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.RiZ;
import com.bytedance.sdk.openadsdk.core.dNu;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private static volatile sP Sj;
    private final RiZ<com.bytedance.sdk.openadsdk.EjP.Sj> sP = dNu.TKC();

    private sP() {
    }

    public static sP Sj() {
        if (Sj == null) {
            synchronized (sP.class) {
                try {
                    if (Sj == null) {
                        Sj = new sP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public void Sj(@NonNull String str, List<FilterWord> list, String str2) {
        Sj(str, list, null, null, str2);
    }

    public void Sj(@NonNull String str, List<FilterWord> list, String str2, String str3, String str4) {
        this.sP.Sj(str, list, str2, str3, str4);
    }
}
