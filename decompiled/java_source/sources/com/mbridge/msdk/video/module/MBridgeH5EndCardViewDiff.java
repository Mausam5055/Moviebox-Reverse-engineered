package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.mbridge.msdk.click.a;
import com.mbridge.msdk.click.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.mraid.b;
import com.mbridge.msdk.video.signal.h;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MBridgeH5EndCardViewDiff extends MBridgeBaseView implements h, b, j {
    public String unitId;

    public MBridgeH5EndCardViewDiff(Context context) {
        super(context);
    }

    public MBridgeH5EndCardViewDiff(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public abstract /* synthetic */ void close();

    public abstract /* synthetic */ void expand(String str, boolean z10);

    public abstract /* synthetic */ CampaignEx getMraidCampaign();

    public abstract /* synthetic */ void handlerPlayableException(String str);

    public abstract /* synthetic */ void install(CampaignEx campaignEx);

    public abstract /* synthetic */ void notifyCloseBtn(int i11);

    public void open(String str) {
        try {
            String clickURL = this.f39226b.getClickURL();
            if (!TextUtils.isEmpty(str)) {
                this.f39226b.setClickURL(str);
                reportOpen(str);
            }
            this.f39226b.setClickTempSource(2);
            this.f39226b.setClickType(2);
            this.f39226b.setTriggerClickSource(2);
            a aVar = new a(getContext(), this.unitId);
            aVar.a(this);
            aVar.a(this.f39226b);
            this.f39226b.setClickURL(clickURL);
            this.notifyListener.a(126, "");
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    public abstract /* synthetic */ void orientation(Configuration configuration);

    public abstract /* synthetic */ void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar);

    public abstract /* synthetic */ void readyStatus(int i11);

    public void reportOpen(String str) {
        CampaignEx mraidCampaign = getMraidCampaign();
        if (mraidCampaign != null) {
            new com.mbridge.msdk.foundation.same.report.h(getContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.unitId, str, this.f39226b.isBidCampaign());
        }
    }

    public abstract /* synthetic */ void toggleCloseBtn(int i11);

    public abstract /* synthetic */ void unload();

    public abstract /* synthetic */ void useCustomClose(boolean z10);

    public abstract /* synthetic */ void webviewshow();
}
