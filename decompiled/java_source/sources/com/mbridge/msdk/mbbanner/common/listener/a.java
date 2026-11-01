package com.mbridge.msdk.mbbanner.common.listener;

import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes5.dex */
public interface a {
    void a(CampaignEx campaignEx);

    void a(boolean z10);

    void a(boolean z10, String str);

    void close();

    void readyStatus(int i11);

    void toggleCloseBtn(int i11);

    void triggerCloseBtn(String str);
}
