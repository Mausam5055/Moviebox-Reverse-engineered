package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;

/* JADX INFO: loaded from: classes5.dex */
public class b extends d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MBridgeVideoView f39449n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private MBridgeContainerView f39450o;

    public b(MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i11, boolean z10) {
        super(campaignEx, aVar, cVar, str, str2, aVar2, i11, z10);
        this.f39449n = mBridgeVideoView;
        this.f39450o = mBridgeContainerView;
        if (mBridgeVideoView == null || mBridgeContainerView == null) {
            this.f39460a = false;
        }
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.d, com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i11, Object obj) {
        if (this.f39460a) {
            if (i11 == 8) {
                MBridgeContainerView mBridgeContainerView = this.f39450o;
                if (mBridgeContainerView == null) {
                    MBridgeVideoView mBridgeVideoView = this.f39449n;
                    if (mBridgeVideoView != null) {
                        mBridgeVideoView.showAlertView();
                    }
                } else if (mBridgeContainerView.showAlertWebView()) {
                    MBridgeVideoView mBridgeVideoView2 = this.f39449n;
                    if (mBridgeVideoView2 != null) {
                        mBridgeVideoView2.alertWebViewShowed();
                    }
                } else {
                    MBridgeVideoView mBridgeVideoView3 = this.f39449n;
                    if (mBridgeVideoView3 != null) {
                        mBridgeVideoView3.showAlertView();
                    }
                }
            } else if (i11 == 107) {
                this.f39450o.showVideoClickView(-1);
                this.f39449n.setCover(false);
                this.f39449n.setMiniEndCardState(false);
                this.f39449n.videoOperate(1);
            } else if (i11 == 112) {
                this.f39449n.setCover(true);
                this.f39449n.setMiniEndCardState(true);
                this.f39449n.videoOperate(2);
            } else if (i11 == 115) {
                this.f39450o.resizeMiniCard(this.f39449n.getBorderViewWidth(), this.f39449n.getBorderViewHeight(), this.f39449n.getBorderViewRadius());
            }
        }
        super.a(i11, obj);
    }
}
