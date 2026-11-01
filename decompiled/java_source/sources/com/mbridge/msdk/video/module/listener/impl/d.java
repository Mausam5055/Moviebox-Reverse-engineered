package com.mbridge.msdk.video.module.listener.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes5.dex */
public class d extends k {
    public d(CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar, com.mbridge.msdk.videocommon.entity.c cVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i11, boolean z10) {
        super(campaignEx, aVar, cVar, str, str2, aVar2, i11, z10);
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i11, Object obj) {
        super.a(i11, obj);
        if (this.f39460a) {
            try {
                CampaignEx campaignEx = this.f39461b;
                if (campaignEx != null && campaignEx.getDynamicTempCode() == 5) {
                    a(obj.toString());
                }
            } catch (Exception unused) {
            }
            if (i11 != 105 && i11 != 106 && i11 != 113) {
                if (i11 == 122) {
                    g();
                    return;
                }
                switch (i11) {
                    case 109:
                        a(2);
                        b(2);
                        break;
                    case 110:
                        a(1);
                        b(1);
                        break;
                    case 111:
                        b(1);
                        break;
                }
            }
            com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b);
            if (i11 != 105) {
                String noticeUrl = this.f39461b.getNoticeUrl();
                if (!TextUtils.isEmpty(noticeUrl)) {
                    if (noticeUrl.contains(com.mbridge.msdk.foundation.same.a.f35341m)) {
                        noticeUrl = noticeUrl.replace(com.mbridge.msdk.foundation.same.a.f35341m + UrlUtils.EQUAL_MARK + Uri.parse(noticeUrl).getQueryParameter(com.mbridge.msdk.foundation.same.a.f35341m), com.mbridge.msdk.foundation.same.a.f35341m + "=2");
                    } else {
                        noticeUrl = noticeUrl + UrlUtils.AND_MARK + com.mbridge.msdk.foundation.same.a.f35341m + "=2";
                    }
                }
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39461b, this.f39466g, noticeUrl, true, false, com.mbridge.msdk.click.retry.a.f34420o);
            }
        }
    }
}
