package com.mbridge.msdk.dycreator.viewdata;

import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes5.dex */
public class a implements com.mbridge.msdk.dycreator.viewdata.base.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DyOption f34899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CampaignEx f34900b;

    public a(DyOption dyOption) {
        this.f34899a = dyOption;
        this.f34900b = dyOption.getCampaignEx();
    }

    @Override // com.mbridge.msdk.dycreator.viewdata.base.a
    public CampaignEx getBindData() {
        return this.f34900b;
    }

    @Override // com.mbridge.msdk.dycreator.viewdata.base.a
    public DyOption getEffectData() {
        return this.f34899a;
    }
}
