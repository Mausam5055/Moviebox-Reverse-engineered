package com.mbridge.msdk.reward.request;

import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a extends c {
    @Override // com.mbridge.msdk.reward.request.c
    public void a(int i11, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        b(i11, str, cVar);
    }

    public abstract void a(CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.reward.request.c
    public void a(List<Frame> list) {
    }

    @Override // com.mbridge.msdk.reward.request.c
    public void a(List<g> list, CampaignUnit campaignUnit) {
        a(campaignUnit);
    }

    public abstract void b(int i11, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar);
}
