package com.bytedance.sdk.openadsdk.component.reward;

import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.JcM;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends com.bytedance.sdk.component.Dq.Dq {
    private final List<? extends com.bytedance.sdk.component.Dq.Dq> Sj;

    public sP(String str, List<? extends com.bytedance.sdk.component.Dq.Dq> list) {
        super(str);
        this.Sj = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        List<? extends com.bytedance.sdk.component.Dq.Dq> list;
        if (TzV.TKC(dNu.Sj()) != 0 && (list = this.Sj) != null) {
            Iterator<? extends com.bytedance.sdk.component.Dq.Dq> it = list.iterator();
            while (it.hasNext()) {
                JcM.Sj(it.next(), 1);
                it.remove();
            }
        }
        try {
            com.bytedance.sdk.component.utils.uA.Sj().removeCallbacks(this);
        } catch (Exception unused) {
        }
    }
}
