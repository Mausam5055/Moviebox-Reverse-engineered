package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.signal.factory.IJSFactory;

/* JADX INFO: loaded from: classes5.dex */
public class c extends d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private IJSFactory f39451n;

    public c(IJSFactory iJSFactory, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i11, boolean z10) {
        super(campaignEx, aVar, cVar, str, str2, aVar2, i11, z10);
        this.f39451n = iJSFactory;
        if (iJSFactory == null) {
            this.f39460a = false;
        }
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.d, com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i11, Object obj) {
        if (this.f39460a) {
            if (i11 != 8) {
                if (i11 == 105) {
                    this.f39451n.getJSNotifyProxy().a(3, obj.toString());
                    i11 = -1;
                } else if (i11 == 107) {
                    this.f39451n.getJSContainerModule().showVideoClickView(-1);
                    this.f39451n.getJSVideoModule().setCover(false);
                    this.f39451n.getJSVideoModule().setMiniEndCardState(false);
                    this.f39451n.getJSVideoModule().videoOperate(1);
                } else if (i11 == 112) {
                    this.f39451n.getJSVideoModule().setCover(true);
                    this.f39451n.getJSVideoModule().setMiniEndCardState(true);
                    this.f39451n.getJSVideoModule().videoOperate(2);
                } else if (i11 == 115) {
                    com.mbridge.msdk.video.signal.j jSVideoModule = this.f39451n.getJSVideoModule();
                    this.f39451n.getJSContainerModule().resizeMiniCard(jSVideoModule.getBorderViewWidth(), jSVideoModule.getBorderViewHeight(), jSVideoModule.getBorderViewRadius());
                }
            } else if (this.f39451n.getJSContainerModule().showAlertWebView()) {
                this.f39451n.getJSVideoModule().alertWebViewShowed();
            } else {
                this.f39451n.getJSVideoModule().showAlertView();
            }
        }
        super.a(i11, obj);
    }
}
