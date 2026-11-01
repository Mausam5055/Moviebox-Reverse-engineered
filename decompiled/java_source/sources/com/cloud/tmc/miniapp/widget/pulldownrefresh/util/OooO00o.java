package com.cloud.tmc.miniapp.widget.pulldownrefresh.util;

import com.google.android.material.appbar.AppBarLayout;

/* JADX INFO: loaded from: classes3.dex */
public class OooO00o implements AppBarLayout.g {
    public final /* synthetic */ com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO00o OooO00o;

    public OooO00o(com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO00o oooO00o) {
        this.OooO00o = oooO00o;
    }

    @Override // com.google.android.material.appbar.AppBarLayout.b
    public void onOffsetChanged(AppBarLayout appBarLayout, int i11) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO00o oooO00o = this.OooO00o;
        boolean z10 = i11 >= 0;
        boolean z11 = appBarLayout.getTotalScrollRange() + i11 <= 0;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o oooO00o2 = (com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO00o;
        oooO00o2.OooO0oO = z10;
        oooO00o2.OooO0oo = z11;
    }
}
