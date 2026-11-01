package com.mbridge.msdk.splash.request;

import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f37570d;

    public b(int i11) {
        this.f37570d = i11;
    }

    @Override // com.mbridge.msdk.splash.request.d
    public void a(int i11, String str) {
        b(i11, str);
    }

    public abstract void a(CampaignUnit campaignUnit, int i11);

    @Override // com.mbridge.msdk.splash.request.d
    public void a(List<Frame> list) {
    }

    @Override // com.mbridge.msdk.splash.request.d
    public void a(List<g> list, CampaignUnit campaignUnit) {
        a(campaignUnit, this.f37570d);
    }

    public abstract void b(int i11, String str);
}
