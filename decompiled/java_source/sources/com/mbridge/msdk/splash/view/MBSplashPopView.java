package com.mbridge.msdk.splash.view;

import android.content.Context;
import android.util.AttributeSet;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.splash.middle.d;

/* JADX INFO: loaded from: classes5.dex */
public class MBSplashPopView extends BaseSplashPopView {
    public MBSplashPopView(Context context) {
        super(context);
    }

    public MBSplashPopView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MBSplashPopView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    public MBSplashPopView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
    }

    public MBSplashPopView(Context context, BaseSplashPopView.i iVar, d dVar) {
        super(context, iVar, dVar);
    }

    @Override // com.mbridge.msdk.splash.view.BaseSplashPopView
    protected void b(CampaignEx campaignEx) {
        super.b(campaignEx);
        a(campaignEx);
    }
}
