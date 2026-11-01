package com.bytedance.sdk.openadsdk.component.reward.view;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes3.dex */
public class Jcg extends com.bytedance.sdk.openadsdk.core.HiB.TKC {
    private final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj Sj;

    public Jcg(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        super(sj2.Ei);
        this.Sj = sj2;
        if (sj2.HS != null || Build.VERSION.SDK_INT < 35) {
            return;
        }
        setFitsSystemWindows(true);
    }

    private void Sj(View view, ViewGroup viewGroup) {
        if (view != null) {
            viewGroup.addView(view, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar) {
        RFEndCardBackUpLayout rFEndCardBackUpLayoutDq;
        sPVar.Sj(this);
        if (this.Sj.Sj != 1 && (rFEndCardBackUpLayoutDq = sPVar.Dq()) != null) {
            addView(rFEndCardBackUpLayoutDq, new FrameLayout.LayoutParams(-1, -1));
        }
        Sj(sPVar.uA(), this);
        Sj(sPVar.TEQ(), this);
    }
}
