package com.mbridge.msdk.interstitial.request;

import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b extends c {
    @Override // com.mbridge.msdk.interstitial.request.c
    public void a(int i11, String str) {
        b(i11, str);
    }

    public abstract void a(CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.interstitial.request.c
    public void a(List<Frame> list) {
    }

    @Override // com.mbridge.msdk.interstitial.request.c
    public void a(List<g> list, CampaignUnit campaignUnit) {
        a(campaignUnit);
    }

    public abstract void b(int i11, String str);
}
